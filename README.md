# flutterapirest

- Esse projeto tem como base aplicações de conhecimentos em Dart e Flutter onde se faz uma chamada a API (PlaceHolder: https://jsonplaceholder.typicode.com/posts) da qual é possível via código escolher se a chamada é via Dio ou via Http onde é usado princípios do SOLID juntamente com o Padrão de Projeto MVC!

- Linha de código na classe home_page.dart da qual pode ser feita a escolha da chamada a API via Dio ou Http;

```dart
 //Using Client Http (HttpClientRepository)
  // final HomeController _controller = HomeController(DioClientRepository());
  // Or
  // Using Client Dio (DioClientRepository)
  // final HomeController _controller = HomeController(DioClientRepository());

  final HomeController _controller = HomeController(DioClientRepository());
```
- Chamada do método que faz a requisição a API Placeholder;

```dart
 floatingActionButton: FloatingActionButton(
    onPressed: () async {
    // get posts call API
    _controller.getPosts();
    setState(() {});
    },
    child: const Icon(Icons.send),
  ),
```




