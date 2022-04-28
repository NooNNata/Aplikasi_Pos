import 'package:griya_fashion/model/user.dart';

class ResponseServer {
  bool success;
  User user;
  ResponseServer({required this.success, required this.user});

  factory ResponseServer.toJson(Map<String, dynamic> json) =>
      ResponseServer(success: json['success'], user:User.fromJson(json['user']) );
}
