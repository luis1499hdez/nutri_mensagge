import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:nutri_message_flutter/models/session.dart';
import 'package:nutri_message_flutter/models/user.dart';
import 'package:nutri_message_flutter/utils/globalConfig.dart';

class LoginController {
  Future<Session> singIn(String email, String password) async {
    var url = Uri.http(GlobalConfig.API_URL, 'auth/login');
    var response = await http.post(url,
        headers: {"Content-Type": 'application/json'},
        body: jsonEncode({"email": email, "password": password}));
    print(response.body);
    if (response.statusCode != 200) throw 'Error en usuario o contraseña';
    var jsonResponse = jsonDecode(response.body);
    var user = User(
        jsonResponse["user"]["id"] as String,
        jsonResponse["user"]["email"] as String,
        jsonResponse["user"]["name"] as String);
    Session.create(jsonResponse["token"] as String, user);
    return Session();
  }
}
