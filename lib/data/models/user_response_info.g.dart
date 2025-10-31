// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_response_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserResponseInfo _$UserResponseInfoFromJson(Map<String, dynamic> json) =>
    UserResponseInfo(
      seed: json['seed'] as String,
      results: (json['results'] as num).toInt(),
      page: (json['page'] as num).toInt(),
      version: json['version'] as String,
    );

Map<String, dynamic> _$UserResponseInfoToJson(UserResponseInfo instance) =>
    <String, dynamic>{
      'seed': instance.seed,
      'results': instance.results,
      'page': instance.page,
      'version': instance.version,
    };
