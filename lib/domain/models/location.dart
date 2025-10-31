class Location {
  final String address;
  final String city;
  final String state;
  final String postcode;
  final Timezone timezone;

  Location({
    required this.address,
    required this.city,
    required this.state,
    required this.postcode,
    required this.timezone,
  });
}

class Timezone {
  final String offset;
  final String description;

  Timezone({required this.offset, required this.description});
}
