import 'package:flutterapirest/repositories/home_repository.dart';

class HomeController {
  final HomeRepository _client;
  HomeController(this._client);

  List<dynamic> postsList = [];

  getPosts() async {
    postsList = await _client.getPosts();
  }
}
