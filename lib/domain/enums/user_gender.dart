enum UserGender {
  male,
  female;

  static UserGender fromString(String value) {
    switch (value) {
      case 'male':
        return UserGender.male;
      case 'female':
        return UserGender.female;
      default:
        throw Exception('Invalid user gender');
    }
  }

  String toShortString() {
    switch (this) {
      case UserGender.male:
        return 'Masculino';
      case UserGender.female:
        return 'Feminino';
    }
  }
}
