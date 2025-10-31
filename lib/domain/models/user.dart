import 'package:desafio_bus2/domain/enums/user_gender.dart';
import 'package:desafio_bus2/domain/models/location.dart';
import 'package:desafio_bus2/domain/models/user_document.dart';

class User {
  final String uuid;
  final UserGender gender;
  final String fullName;
  final String nat;
  final UserDocument document;
  final String email;
  final String phone;
  final String cell;
  final Location location;
  final DateTime dateOfBirth;
  final DateTime registrationDate;
  final String imageUrl;

  User({
    required this.uuid,
    required this.gender,
    required this.fullName,
    required this.nat,
    required this.document,
    required this.email,
    required this.phone,
    required this.cell,
    required this.location,
    required this.dateOfBirth,
    required this.registrationDate,
    required this.imageUrl,
  });
}
