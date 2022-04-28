import 'dart:convert';

import 'package:griya_fashion/model/user.dart';
import 'package:http/http.dart' as http;

class Login {
  var url = Uri.parse('http://10.0.2.2:8000/api/login');

  Future<User> loginUser(
      {required String email, required String password}) async {
    var dataLogin =
        await http.post(url, body: {'email': email, 'password': password});

    var data = jsonDecode(dataLogin.body);
    User result = User.fromJson(data);
    print(result);
    return result;
  }
}
