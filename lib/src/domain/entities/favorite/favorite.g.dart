// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Favorite _$FavoriteFromJson(Map<String, dynamic> json) {
  return Favorite(
    id: json['_id'] as String,
    articleId: json['article_id'] as String,
    userId: json['user_id'] as String,
    article: json['article'] == null
        ? null
        : Article.fromJson(json['article'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$FavoriteToJson(Favorite instance) => <String, dynamic>{
      '_id': instance.id,
      'article_id': instance.articleId,
      'user_id': instance.userId,
      'article': instance.article,
    };
