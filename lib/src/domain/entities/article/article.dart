import 'package:freezed_annotation/freezed_annotation.dart';

part 'article.g.dart';

@JsonSerializable()
class Article {
  @JsonKey(name: '_id')
  final String id;
  final String title;
  final String content;
  @JsonKey(name: 'user_id')
  final String userId;
  @JsonKey(name: 'category_id')
  final String categoryId;
  @JsonKey(name: 'created_at')
  final String createdAt;
  final List<String> images;

  Article({
    this.id,
    this.title,
    this.content,
    this.userId,
    this.categoryId,
    this.createdAt,
    this.images,
  });

  factory Article.fromJson(Map<String, dynamic> json) =>
      _$ArticleFromJson(json);

  Map<String, dynamic> toJson() => _$ArticleToJson(this);
}
