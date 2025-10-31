// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserItem _$UserItemFromJson(Map<String, dynamic> json) => UserItem(
  login: UserLogin.fromJson(json['login'] as Map<String, dynamic>),
  gender: json['gender'] as String,
  name: UserName.fromJson(json['name'] as Map<String, dynamic>),
  location: LocationResponse.fromJson(json['location'] as Map<String, dynamic>),
  email: json['email'] as String,
  dob: DobResponse.fromJson(json['dob'] as Map<String, dynamic>),
  registered: RegisteredResponse.fromJson(
    json['registered'] as Map<String, dynamic>,
  ),
  phone: json['phone'] as String,
  cell: json['cell'] as String,
  id: IdReponse.fromJson(json['id'] as Map<String, dynamic>),
  picture: PictureResponse.fromJson(json['picture'] as Map<String, dynamic>),
  nat: json['nat'] as String,
);

Map<String, dynamic> _$UserItemToJson(UserItem instance) => <String, dynamic>{
  'login': instance.login,
  'gender': instance.gender,
  'name': instance.name,
  'location': instance.location,
  'email': instance.email,
  'dob': instance.dob,
  'registered': instance.registered,
  'phone': instance.phone,
  'cell': instance.cell,
  'id': instance.id,
  'picture': instance.picture,
  'nat': instance.nat,
};

UserName _$UserNameFromJson(Map<String, dynamic> json) => UserName(
  title: json['title'] as String,
  first: json['first'] as String,
  last: json['last'] as String,
);

Map<String, dynamic> _$UserNameToJson(UserName instance) => <String, dynamic>{
  'title': instance.title,
  'first': instance.first,
  'last': instance.last,
};

LocationResponse _$LocationResponseFromJson(Map<String, dynamic> json) =>
    LocationResponse(
      street: StreetResponse.fromJson(json['street'] as Map<String, dynamic>),
      city: json['city'] as String,
      state: json['state'] as String,
      country: json['country'] as String,
      postcode: json['postcode'],
      coordinates: CoordinatesResponse.fromJson(
        json['coordinates'] as Map<String, dynamic>,
      ),
      timezone: TimezoneResponse.fromJson(
        json['timezone'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$LocationResponseToJson(LocationResponse instance) =>
    <String, dynamic>{
      'street': instance.street,
      'city': instance.city,
      'state': instance.state,
      'country': instance.country,
      'postcode': instance.postcode,
      'coordinates': instance.coordinates,
      'timezone': instance.timezone,
    };

UserLogin _$UserLoginFromJson(Map<String, dynamic> json) =>
    UserLogin(uuid: json['uuid'] as String);

Map<String, dynamic> _$UserLoginToJson(UserLogin instance) => <String, dynamic>{
  'uuid': instance.uuid,
};

StreetResponse _$StreetResponseFromJson(Map<String, dynamic> json) =>
    StreetResponse(
      number: (json['number'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$StreetResponseToJson(StreetResponse instance) =>
    <String, dynamic>{'number': instance.number, 'name': instance.name};

CoordinatesResponse _$CoordinatesResponseFromJson(Map<String, dynamic> json) =>
    CoordinatesResponse(
      latitude: json['latitude'] as String,
      longitude: json['longitude'] as String,
    );

Map<String, dynamic> _$CoordinatesResponseToJson(
  CoordinatesResponse instance,
) => <String, dynamic>{
  'latitude': instance.latitude,
  'longitude': instance.longitude,
};

TimezoneResponse _$TimezoneResponseFromJson(Map<String, dynamic> json) =>
    TimezoneResponse(
      offset: json['offset'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$TimezoneResponseToJson(TimezoneResponse instance) =>
    <String, dynamic>{
      'offset': instance.offset,
      'description': instance.description,
    };

DobResponse _$DobResponseFromJson(Map<String, dynamic> json) => DobResponse(
  date: json['date'] as String,
  age: (json['age'] as num).toInt(),
);

Map<String, dynamic> _$DobResponseToJson(DobResponse instance) =>
    <String, dynamic>{'date': instance.date, 'age': instance.age};

RegisteredResponse _$RegisteredResponseFromJson(Map<String, dynamic> json) =>
    RegisteredResponse(
      date: json['date'] as String,
      age: (json['age'] as num).toInt(),
    );

Map<String, dynamic> _$RegisteredResponseToJson(RegisteredResponse instance) =>
    <String, dynamic>{'date': instance.date, 'age': instance.age};

IdReponse _$IdReponseFromJson(Map<String, dynamic> json) =>
    IdReponse(name: json['name'] as String, value: json['value'] as String);

Map<String, dynamic> _$IdReponseToJson(IdReponse instance) => <String, dynamic>{
  'name': instance.name,
  'value': instance.value,
};

PictureResponse _$PictureResponseFromJson(Map<String, dynamic> json) =>
    PictureResponse(
      large: json['large'] as String,
      medium: json['medium'] as String,
      thumbnail: json['thumbnail'] as String,
    );

Map<String, dynamic> _$PictureResponseToJson(PictureResponse instance) =>
    <String, dynamic>{
      'large': instance.large,
      'medium': instance.medium,
      'thumbnail': instance.thumbnail,
    };
