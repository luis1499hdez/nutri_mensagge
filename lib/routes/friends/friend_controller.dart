import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:nutri_message_flutter/models/session.dart';
import 'package:nutri_message_flutter/models/user.dart';
import 'package:nutri_message_flutter/utils/globalConfig.dart';

class FriendController {
  Future<List<User>> postFriends() async {
    final url = Uri.http(GlobalConfig.API_URL, '/friends/{userId}');
    final response = await http
        .post(url, headers: {'Authorization': 'Bearer ${Session().token}'});
    print(response.body);
    final jsonFriends = jsonDecode(response.body) as List<dynamic>;
    return jsonFriends.map((e) => User.fromJason(e)).toList();
  }
}

class FriendRequestController {
  Future<bool> postFriendsR(String id) async {
    final url = Uri.http(GlobalConfig.API_URL, '/friends/${id}');
    var response = await http.post(url, headers: {
      "Content-Type": "aplication/json",
      "Authorization": "Bearer ${Session().token}",
    });
    if (response.statusCode != 200) {
      return false;
    } else {
      return true;
    }
  }
}
