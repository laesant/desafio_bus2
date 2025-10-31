import 'package:json_annotation/json_annotation.dart';

part 'user_item.g.dart';

@JsonSerializable()
class UserItem {
  final UserLogin login;
  final String gender;
  final UserName name;
  final LocationResponse location;
  final String email;
  final DobResponse dob;
  final RegisteredResponse registered;
  final String phone;
  final String cell;
  final IdReponse id;
  final PictureResponse picture;
  final String nat;

  UserItem({
    required this.login,
    required this.gender,
    required this.name,
    required this.location,
    required this.email,
    required this.dob,
    required this.registered,
    required this.phone,
    required this.cell,
    required this.id,
    required this.picture,
    required this.nat,
  });

  factory UserItem.fromJson(Map<String, dynamic> json) =>
      _$UserItemFromJson(json);

  Map<String, dynamic> toJson() => _$UserItemToJson(this);
}

@JsonSerializable()
class UserName {
  final String title;
  final String first;
  final String last;

  UserName({required this.title, required this.first, required this.last});
  factory UserName.fromJson(Map<String, dynamic> json) =>
      _$UserNameFromJson(json);

  Map<String, dynamic> toJson() => _$UserNameToJson(this);
}

@JsonSerializable()
class LocationResponse {
  final StreetResponse street;
  final String city;
  final String state;
  final String country;
  final dynamic postcode;
  final CoordinatesResponse coordinates;
  final TimezoneResponse timezone;

  LocationResponse({
    required this.street,
    required this.city,
    required this.state,
    required this.country,
    required this.postcode,
    required this.coordinates,
    required this.timezone,
  });

  factory LocationResponse.fromJson(Map<String, dynamic> json) =>
      _$LocationResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LocationResponseToJson(this);
}

@JsonSerializable()
class UserLogin {
  final String uuid;

  UserLogin({required this.uuid});
  factory UserLogin.fromJson(Map<String, dynamic> json) =>
      _$UserLoginFromJson(json);

  Map<String, dynamic> toJson() => _$UserLoginToJson(this);
}

@JsonSerializable()
class StreetResponse {
  final int number;
  final String name;

  StreetResponse({required this.number, required this.name});

  factory StreetResponse.fromJson(Map<String, dynamic> json) =>
      _$StreetResponseFromJson(json);

  Map<String, dynamic> toJson() => _$StreetResponseToJson(this);
}

@JsonSerializable()
class CoordinatesResponse {
  final String latitude;
  final String longitude;

  CoordinatesResponse({required this.latitude, required this.longitude});

  factory CoordinatesResponse.fromJson(Map<String, dynamic> json) =>
      _$CoordinatesResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CoordinatesResponseToJson(this);
}

@JsonSerializable()
class TimezoneResponse {
  final String offset;
  final String description;

  TimezoneResponse({required this.offset, required this.description});

  factory TimezoneResponse.fromJson(Map<String, dynamic> json) =>
      _$TimezoneResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TimezoneResponseToJson(this);
}

@JsonSerializable()
class DobResponse {
  final String date;
  final int age;
  DobResponse({required this.date, required this.age});

  factory DobResponse.fromJson(Map<String, dynamic> json) =>
      _$DobResponseFromJson(json);

  Map<String, dynamic> toJson() => _$DobResponseToJson(this);
}

@JsonSerializable()
class RegisteredResponse {
  final String date;
  final int age;
  RegisteredResponse({required this.date, required this.age});
  factory RegisteredResponse.fromJson(Map<String, dynamic> json) =>
      _$RegisteredResponseFromJson(json);
  Map<String, dynamic> toJson() => _$RegisteredResponseToJson(this);
}

@JsonSerializable()
class IdReponse {
  final String name;
  final String value;

  IdReponse({required this.name, required this.value});

  factory IdReponse.fromJson(Map<String, dynamic> json) =>
      _$IdReponseFromJson(json);
  Map<String, dynamic> toJson() => _$IdReponseToJson(this);
}

@JsonSerializable()
class PictureResponse {
  final String large;
  final String medium;
  final String thumbnail;

  PictureResponse({
    required this.large,
    required this.medium,
    required this.thumbnail,
  });
  factory PictureResponse.fromJson(Map<String, dynamic> json) =>
      _$PictureResponseFromJson(json);
  Map<String, dynamic> toJson() => _$PictureResponseToJson(this);
}
