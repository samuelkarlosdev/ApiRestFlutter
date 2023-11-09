import 'package:flutter/material.dart';
import 'package:flutterapirest/controllers/home_controller.dart';
import 'package:flutterapirest/repositories/dio_client_repository.dart';
import 'package:flutterapirest/repositories/http_client_repository.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //Using Client Http (HttpClientRepository)
  // final HomeController _controller = HomeController(DioClientRepository());
  // Or
  // Using Client Dio (DioClientRepository)
  // final HomeController _controller = HomeController(DioClientRepository());

  final HomeController _controller = HomeController(DioClientRepository());

  @override
  void initState() {
    super.initState();
    _controller.getPosts();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView.builder(
            itemCount: _controller.postsList.length,
            itemBuilder: (_, index) => Card(
                  child: ListTile(
                    title: Text(_controller.postsList[index]['title']),
                  ),
                )),
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            // get posts call API
            _controller.getPosts();
            setState(() {});
          },
          child: const Icon(Icons.send),
        ),
      ),
    );
  }
}
