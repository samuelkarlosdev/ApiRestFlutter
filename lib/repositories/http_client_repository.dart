import 'dart:convert';

import 'package:flutterapirest/repositories/home_repository.dart';
import 'package:http/http.dart' as http;

class HttpClientRepository implements HomeRepository {
  @override
  Future<List> getPosts() async {
    var client = Uri.https("jsonplaceholder.typicode.com", "/posts");
    var response = await http.get(client);

    return jsonDecode(response.body);
  }
}
