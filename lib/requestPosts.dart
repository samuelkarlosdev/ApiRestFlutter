import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutterapirest/resquestApi.dart';
import 'package:http/http.dart' as http;

class RequestPosts implements RequestApi {
  List<dynamic> postsList = [];

  @override
  Future getPostsDio() async {
    final client =
        Dio(BaseOptions(baseUrl: "https://jsonplaceholder.typicode.com/"));
    final response = await client.get(
      "/posts",
    );
    postsList = response.data;
    return postsList;
  }

  @override
  Future getPostsHttp() async {
    var client = Uri.https("jsonplaceholder.typicode.com", "/posts");
    var response = await http.get(client);

    postsList = jsonDecode(response.body);

    return postsList;
  }
}
