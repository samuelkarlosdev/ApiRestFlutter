import 'package:flutter/material.dart';
import 'package:flutterapirest/requestPosts.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  RequestPosts posts = RequestPosts();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView.builder(
            itemCount: posts.postsList.length,
            itemBuilder: (_, index) => Card(
                  child: ListTile(
                    title: Text(posts.postsList[index]['title']),
                  ),
                )),
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            // Using Dio (getPostsDio) or Http (getPostsHttp)
            //posts.getPostsDio();
            posts.getPostsHttp();
            setState(() {});
          },
          child: const Icon(Icons.send),
        ),
      ),
    );
  }
}
