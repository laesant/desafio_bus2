// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserResponse _$UserResponseFromJson(Map<String, dynamic> json) => UserResponse(
  results: (json['results'] as List<dynamic>)
      .map((e) => UserItem.fromJson(e as Map<String, dynamic>))
      .toList(),
  info: UserResponseInfo.fromJson(json['info'] as Map<String, dynamic>),
);

Map<String, dynamic> _$UserResponseToJson(UserResponse instance) =>
    <String, dynamic>{'results': instance.results, 'info': instance.info};
