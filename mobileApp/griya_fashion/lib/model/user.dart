import 'dart:convert';

class User {
  String name;
  String email;
  String password;
  String password_ver;
  User({required this.name, required this.email, required this.password, required this.password_ver});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
        name: json['name'], email: json['email'], password: json['password'], password_ver: json['password_confirmation']);
  }
}
