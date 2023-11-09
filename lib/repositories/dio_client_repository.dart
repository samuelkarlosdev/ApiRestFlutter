import 'package:dio/dio.dart';
import 'package:flutterapirest/repositories/home_repository.dart';

class DioClientRepository implements HomeRepository {
  @override
  Future<List> getPosts() async {
    final dio = Dio();
    final response =
        await dio.get('https://jsonplaceholder.typicode.com/posts');
    return response.data;
  }
}
