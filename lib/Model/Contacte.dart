class Contacte {
  final String name;
  final String email;
  final String phone;

  Contacte.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        email = json['email'],
        phone = json['phone'];
}
