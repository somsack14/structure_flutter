class Data {
  Data({
    required this.id,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.avatar,
  });

  int id;
  String email;

  String firstName;

  String lastName;
  String avatar;

  factory Data.fromJson(Map<String, dynamic> json) => Data.fromJson(json);

  // Map<String, dynamic> toJson() => _$DataToJson(this);
}
