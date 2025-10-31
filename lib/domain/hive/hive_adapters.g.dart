// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hive_adapters.dart';

// **************************************************************************
// AdaptersGenerator
// **************************************************************************

class LocationAdapter extends TypeAdapter<Location> {
  @override
  final typeId = 0;

  @override
  Location read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Location(
      address: fields[0] as String,
      city: fields[1] as String,
      state: fields[2] as String,
      postcode: fields[3] as String,
      timezone: fields[4] as Timezone,
    );
  }

  @override
  void write(BinaryWriter writer, Location obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.address)
      ..writeByte(1)
      ..write(obj.city)
      ..writeByte(2)
      ..write(obj.state)
      ..writeByte(3)
      ..write(obj.postcode)
      ..writeByte(4)
      ..write(obj.timezone);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LocationAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class UserDocumentAdapter extends TypeAdapter<UserDocument> {
  @override
  final typeId = 1;

  @override
  UserDocument read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UserDocument(name: fields[0] as String, value: fields[1] as String);
  }

  @override
  void write(BinaryWriter writer, UserDocument obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.value);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserDocumentAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class UserGenderAdapter extends TypeAdapter<UserGender> {
  @override
  final typeId = 3;

  @override
  UserGender read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return UserGender.male;
      case 1:
        return UserGender.female;
      default:
        return UserGender.male;
    }
  }

  @override
  void write(BinaryWriter writer, UserGender obj) {
    switch (obj) {
      case UserGender.male:
        writer.writeByte(0);
      case UserGender.female:
        writer.writeByte(1);
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserGenderAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class UserAdapter extends TypeAdapter<User> {
  @override
  final typeId = 4;

  @override
  User read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return User(
      uuid: fields[0] as String,
      gender: fields[1] as UserGender,
      fullName: fields[2] as String,
      nat: fields[3] as String,
      document: fields[4] as UserDocument,
      email: fields[5] as String,
      phone: fields[6] as String,
      cell: fields[7] as String,
      location: fields[8] as Location,
      dateOfBirth: fields[9] as DateTime,
      registrationDate: fields[10] as DateTime,
      imageUrl: fields[11] as String,
    );
  }

  @override
  void write(BinaryWriter writer, User obj) {
    writer
      ..writeByte(12)
      ..writeByte(0)
      ..write(obj.uuid)
      ..writeByte(1)
      ..write(obj.gender)
      ..writeByte(2)
      ..write(obj.fullName)
      ..writeByte(3)
      ..write(obj.nat)
      ..writeByte(4)
      ..write(obj.document)
      ..writeByte(5)
      ..write(obj.email)
      ..writeByte(6)
      ..write(obj.phone)
      ..writeByte(7)
      ..write(obj.cell)
      ..writeByte(8)
      ..write(obj.location)
      ..writeByte(9)
      ..write(obj.dateOfBirth)
      ..writeByte(10)
      ..write(obj.registrationDate)
      ..writeByte(11)
      ..write(obj.imageUrl);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class TimezoneAdapter extends TypeAdapter<Timezone> {
  @override
  final typeId = 5;

  @override
  Timezone read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Timezone(
      offset: fields[0] as String,
      description: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Timezone obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.offset)
      ..writeByte(1)
      ..write(obj.description);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TimezoneAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
