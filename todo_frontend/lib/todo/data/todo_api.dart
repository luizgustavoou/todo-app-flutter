import 'package:dio/dio.dart';
import 'package:todo_frontend/todo/data/model/todo_model.dart';

class TodoApiImpl implements TodoApi {
  //TODO: Injetar dependencia de dio para testes!
  final dio = Dio();
  final String url = 'http://localhost:3000/todo';

  @override
  Future<List> getTodos() async {
    final response = await dio.get(url);

    final json = response.data as List;

    return json;
  }

  @override
  Future<void> removeTodo(String id) async {
    await dio.delete('$url/$id');
  }

  @override
  Future<void> addTodo(String title) async {
    await dio.post(
      url,
      data: {'userId': null, 'title': title, 'completed': false},
    );
  }
}

abstract class TodoApi {
  Future<List> getTodos();
  Future<void> removeTodo(String id);
  Future<void> addTodo(String title);
}
