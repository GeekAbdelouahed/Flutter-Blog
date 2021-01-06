// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiResponse<T> _$ApiResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object json) fromJsonT,
) {
  return ApiResponse<T>(
    status: json['status'] as bool,
    message: json['message'] as String,
    token: json['token'] as String,
    data: fromJsonT(json['data']),
  );
}

Map<String, dynamic> _$ApiResponseToJson<T>(
  ApiResponse<T> instance,
  Object Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'token': instance.token,
      'data': toJsonT(instance.data),
    };
