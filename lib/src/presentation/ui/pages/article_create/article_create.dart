import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/articles/bloc.dart';
import '../../../../injection.dart';
import '../../components/buttons/rounded_button.dart';
import '../../components/text_fields/rounded_outline_text_field.dart';
import 'widgets/widgets.dart';

class ArticleCreatePage extends StatefulWidget {
  @override
  _ArticleCreatePageState createState() => _ArticleCreatePageState();
}

class _ArticleCreatePageState extends State<ArticleCreatePage> {
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
              ImagesWidget(),
              const SizedBox(
                height: 30,
              ),
              CategoriesWidget(),
              const SizedBox(
                height: 20,
              ),
              AppRoundedOutlineTextFormField(
                hint: 'Title',
                borderRadius: 10,
              ),
              const SizedBox(
                height: 20,
              ),
              AppRoundedOutlineTextFormField(
                hint: 'Content',
                maxLines: 7,
                borderRadius: 10,
              ),
              const SizedBox(
                height: 30,
              ),
              AppRoundedButton(
                onPressed: () {},
                radius: 10,
                title: 'Create Article',
              ),
            ],
          ),
        ),
      );
}
