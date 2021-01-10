import 'package:freezed_annotation/freezed_annotation.dart';

import '../article/article.dart';

part 'favorite.g.dart';

@JsonSerializable()
class Favorite {
  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'article_id')
  final String articleId;
  @JsonKey(name: 'user_id')
  final String userId;
  final Article article;

  Favorite({
    this.id,
    this.articleId,
    this.userId,
    this.article,
  });

  factory Favorite.fromJson(Map<String, dynamic> json) =>
      _$FavoriteFromJson(json);

  Map<String, dynamic> toJson() => _$FavoriteToJson(this);
}
