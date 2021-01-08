import 'package:freezed_annotation/freezed_annotation.dart';

import '../article/article.dart';

part 'favorite.g.dart';

@JsonSerializable()
class Favorite {
  @JsonKey(name: '_id')
  final String id;
  final Article article;

  Favorite({
    this.id,
    this.article,
  });

  factory Favorite.fromJson(Map<String, dynamic> json) =>
      _$FavoriteFromJson(json);

  Map<String, dynamic> toJson() => _$FavoriteToJson(this);
}
