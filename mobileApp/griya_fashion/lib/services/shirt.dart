import 'dart:convert';

import 'package:griya_fashion/model/shirt.dart';
import 'package:http/http.dart' as http;

class Shirt {
  var url = Uri.parse('http://10.0.2.2:8000/api/shirt');

  Future<List<ShirtModel>> shirtData() async {
    var res = await http.get(url);
    var jsonData = jsonDecode(res.body);
    List<dynamic> result = jsonData['data']['data'];
    var listData =  result.map((e) => ShirtModel.toJson(e));
    return listData.map((e) => e).toList();
  }
}
