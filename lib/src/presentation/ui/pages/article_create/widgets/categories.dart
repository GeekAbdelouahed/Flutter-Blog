import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../application/articles/bloc.dart';
import '../../../../../domain/entities/category/category.dart';
import '../../../components/loading.dart';

class CategoriesWidget extends StatefulWidget {
  final Function(Category) onSelectCategory;

  const CategoriesWidget({Key key, this.onSelectCategory}) : super(key: key);

  @override
  _CategoriesWidgetState createState() => _CategoriesWidgetState();
}

class _CategoriesWidgetState extends State<CategoriesWidget> {
  Category _selectedCategory;

  void _selectCategory(Category category) {
    setState(() {
      if (_selectedCategory?.id == category?.id)
        _selectedCategory = null;
      else
        _selectedCategory = category;
    });

    widget.onSelectCategory?.call(_selectedCategory);
  }

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<ArticlesBloc, ArticlesState>(
        builder: (context, state) => state.categoriesState.fold(
          () {
            _selectedCategory = null;
            return LoadingWidget();
          },
          (either) => either.fold(
            (apiError) => Text(apiError.message ?? 'Unknown Error!'),
            (result) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Select Category',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Wrap(
                  spacing: 10,
                  children: result.data.map((category) {
                    bool isSelected = _selectedCategory?.id == category.id;
                    return InkWell(
                      onTap: () {
                        _selectCategory(category);
                      },
                      child: Chip(
                        backgroundColor:
                            isSelected ? Theme.of(context).primaryColor : null,
                        label: Text(
                          category.name,
                          style: TextStyle(
                            color: isSelected ? Colors.white : null,
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
        ),
      );
}
