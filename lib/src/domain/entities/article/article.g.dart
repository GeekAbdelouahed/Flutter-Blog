// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Article _$ArticleFromJson(Map<String, dynamic> json) {
  return Article(
    id: json['_id'] as String,
    title: json['title'] as String,
    content: json['content'] as String,
    userId: json['user_id'] as String,
    categoryId: json['category_id'] as String,
    createdAt: json['created_at'] as String,
    images: (json['images'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$ArticleToJson(Article instance) => <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'user_id': instance.userId,
      'category_id': instance.categoryId,
      'created_at': instance.createdAt,
      'images': instance.images,
    };
