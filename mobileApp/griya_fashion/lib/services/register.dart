import 'dart:convert';

import 'package:griya_fashion/model/response_server.dart';
import 'package:http/http.dart' as http;

class Register {
  var url = Uri.parse('http://10.0.2.2:8000/api/register');
  Future<ResponseServer> registerNewUser(
      {required String name,
      required String email,
      required String password,
      required String password_ver}) async {
    http.Response regis = await http.post(url, body: {
      
      'name': name,
      'email': email,
      'password': password,
      'password_confirmation': password_ver
    });
    print(regis.body);
    var a = jsonDecode(regis.body);

    return ResponseServer.toJson(a);
  }
}
