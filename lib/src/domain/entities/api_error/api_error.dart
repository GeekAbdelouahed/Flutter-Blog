import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_error.g.dart';

@JsonSerializable()
class ApiError {
  final String message;

  ApiError({
    this.message,
  });

  factory ApiError.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorFromJson(json);

  Map<String, dynamic> toJson() => _$ApiErrorToJson(this);
}
