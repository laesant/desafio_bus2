import 'package:desafio_bus2/data/models/user_item.dart';
import 'package:desafio_bus2/data/models/user_response_info.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_response.g.dart';

@JsonSerializable()
class UserResponse {
  final List<UserItem> results;
  final UserResponseInfo info;

  factory UserResponse.fromJson(Map<String, dynamic> json) =>
      _$UserResponseFromJson(json);

  UserResponse({required this.results, required this.info});

  Map<String, dynamic> toJson() => _$UserResponseToJson(this);
}
