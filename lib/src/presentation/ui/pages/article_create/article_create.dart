import 'package:dio/dio.dart' as dio;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../../../application/article_create/bloc.dart';
import '../../../../application/articles/bloc.dart';
import '../../../../domain/entities/category/category.dart';
import '../../../../infrastructure/core/preferences.dart';
import '../../../../injection.dart';
import '../../../utils/extensions.dart';
import '../../components/buttons/rounded_button.dart';
import '../../components/dialogs/waiting.dart';
import '../../components/text_fields/rounded_outline_text_field.dart';
import 'widgets/widgets.dart';

class ArticleCreatePage extends StatefulWidget {
  @override
  _ArticleCreatePageState createState() => _ArticleCreatePageState();
}

class _ArticleCreatePageState extends State<ArticleCreatePage> {
  final _bloc = getIt<ArticleCreateBloc>();
  final _preferences = getIt<AppPreferences>();

  final _formKey = GlobalKey<FormState>();

  final _titleController = TextEditingController();
  final _contentController = TextEditingController();
  List<String> _selectedImages = [];
  Category _selectedCategory;

  void _createArticle() {
    print(_contentController.text);
    final data = dio.FormData.fromMap({
      'title': _titleController.text,
      'content': _contentController.text,
      'category_id': _selectedCategory.id,
      'user_id': _preferences.userId,
    });
    data.files.addAll(
      _selectedImages
          .map((path) => MapEntry(path, dio.MultipartFile.fromFileSync(path)))
          .toList(),
    );

    _bloc.createArticle(data);

    FocusScope.of(context).unfocus();

    context.showAppDialog(
      isDismissible: false,
      child: AppDialogWaiting(),
    );
  }

  void _validForm() {
    if (_selectedImages?.isEmpty ?? true) {
      Fluttertoast.showToast(msg: 'Please select some images');
      return;
    }

    if (_selectedCategory == null) {
      Fluttertoast.showToast(msg: 'Please select category');
      return;
    }

    bool isFormValid = _formKey.currentState.validate();
    if (!isFormValid) return;

    _createArticle();
  }

  @override
  void initState() {
    super.initState();
    _bloc.listen((state) {
      state.articleCreateState.fold(
        () => null,
        (either) => either.fold(
          (apiError) {
            Navigator.pop(context);
            Fluttertoast.showToast(msg: apiError.message);
          },
          (result) {
            Navigator.pop(context);
            Fluttertoast.showToast(msg: result.message);
            Navigator.pop(context);
          },
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Create Article'),
        ),
        body: BlocProvider<ArticlesBloc>(
          create: (_) => getIt<ArticlesBloc>()..getCategories(),
          child: Form(
            key: _formKey,
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              children: [
                ImagesWidget(
                  onSelectImages: (images) {
                    _selectedImages = images;
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
                CategoriesWidget(
                  onSelectCategory: (category) {
                    _selectedCategory = category;
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                AppRoundedOutlineTextFormField(
                  controller: _titleController,
                  textInputAction: TextInputAction.next,
                  validator: (text) {
                    // TODO just for test purpose this is not the best way to validate a text
                    if ((text?.isEmpty ?? true) || text.length < 4)
                      return 'Please insert valid title!';
                    return null;
                  },
                  hint: 'Title',
                  borderRadius: 10,
                ),
                const SizedBox(
                  height: 20,
                ),
                AppRoundedOutlineTextFormField(
                  controller: _contentController,
                  hint: 'Content',
                  validator: (text) {
                    // TODO just for test purpose this is not the best way to validate a text
                    if ((text?.isEmpty ?? true) || text.length < 10)
                      return 'Please insert valid content!';
                    return null;
                  },
                  maxLines: 7,
                  borderRadius: 10,
                ),
                const SizedBox(
                  height: 30,
                ),
                AppRoundedButton(
                  onPressed: _validForm,
                  radius: 10,
                  title: 'Create Article',
                ),
              ],
            ),
          ),
        ),
      );

  @override
  void dispose() {
    _titleController.dispose();
    _contentController.dispose();
    super.dispose();
  }
}
