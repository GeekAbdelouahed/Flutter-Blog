import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../lib/src/domain/entities/api_response/api_response.dart';
import '../lib/src/domain/entities/article/article.dart';
import '../lib/src/domain/articles/i_articles_facade.dart';

class MockArticlesFacade extends Mock implements IArticlesFacade {}

void main() {
  MockArticlesFacade articlesFacade = MockArticlesFacade();

  group('Articles Test', () {
    test('Not empty articles', () async {
      when(() => articlesFacade.getArticles()).thenAnswer(
        ((_) async {
          return right(
            ApiResponse<List<Article>>(
              status: true,
              data: <Article>[],
            ),
          );
        }),
      );

      final articles = await articlesFacade.getArticles();

      expect(articles.getOrElse(() => null).data, isNotEmpty);
    });
  });
}
