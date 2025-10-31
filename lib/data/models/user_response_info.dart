import 'package:json_annotation/json_annotation.dart';

part 'user_response_info.g.dart';

@JsonSerializable()
class UserResponseInfo {
  final String seed;
  final int results;
  final int page;
  final String version;
  factory UserResponseInfo.fromJson(Map<String, dynamic> json) =>
      _$UserResponseInfoFromJson(json);

  UserResponseInfo({
    required this.seed,
    required this.results,
    required this.page,
    required this.version,
  });

  Map<String, dynamic> toJson() => _$UserResponseInfoToJson(this);
}
