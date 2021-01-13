import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/articles/bloc.dart';
import '../../../../domain/entities/category/category.dart';
import '../../../../injection.dart';
import '../../components/buttons/rounded_button.dart';
import '../../components/text_fields/rounded_outline_text_field.dart';
import 'widgets/widgets.dart';

class ArticleCreatePage extends StatefulWidget {
  @override
  _ArticleCreatePageState createState() => _ArticleCreatePageState();
}

class _ArticleCreatePageState extends State<ArticleCreatePage> {
  List<String> _selectedImages = [];
  Category _selectedCategory;

  final _titleController = TextEditingController();
  final _contentController = TextEditingController();

  void _createArticle() {}

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Create Article'),
        ),
        body: BlocProvider<ArticlesBloc>(
          create: (_) => getIt<ArticlesBloc>()..getCategories(),
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
                onPressed: _createArticle,
                radius: 10,
                title: 'Create Article',
              ),
            ],
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
