# flutterapirest

- Esse projeto tem como base aplicações de conhecimentos em Dart e Flutter onde se faz uma chamada a API (PlaceHolder: https://jsonplaceholder.typicode.com/) da qual é possível via código escolher se a chamada é via Dio ou via Http onde cada implmenetação está na classe requestPosts que implementa a classe abstrata requestApi com seus respectivos métodos getPostsDio() e getPostsHttp();

- Na classe main.dart temos uma instância de resquestPosts:

```dart
 RequestPosts posts = RequestPosts();
```
- Chamada do método que faz a requisição a API Placeholder via Dio pelo método getPostsDio ou via Http pelo método getPostsHttp;

```dart
 floatingActionButton: FloatingActionButton(
    onPressed: () async {
    // Using Dio (getPostsDio) or Http (getPostsHttp)
    //posts.getPostsDio();
    posts.getPostsHttp();
    setState(() {});
    },
```




