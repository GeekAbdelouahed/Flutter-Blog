import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_response.g.dart';

@JsonSerializable()
class ApiResponse {
  final bool status;
  final String message;
  final String token;

  ApiResponse({
    this.status,
    this.message,
    this.token,
  });

  factory ApiResponse.fromJson(Map<String, dynamic> json) =>
      _$ApiResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ApiResponseToJson(this);
}
