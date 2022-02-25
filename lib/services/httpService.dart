import 'dart:convert';
import 'dart:math';
import 'package:http/http.dart';
import '../models/PostModel.dart';


class HttpService {
  final String postsURL = "https://cb917032-630e-4cb4-bb06-d5c870144e29.mock.pstmn.io/users1";

  Future<List<Users>> getPosts() async {
    Response res = await get(Uri.parse(postsURL));

    if (res.statusCode == 200) {
      List<Users> body = PostModel.fromJson(jsonDecode(res.body)).users!;
      print(body.length);
      return body;
    } else {
      print( "Unable to retrieve posts.");
      throw"Unable to retrieve posts.";
    }
  }
}