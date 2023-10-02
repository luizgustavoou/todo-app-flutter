import 'package:todo_frontend/todo/data/model/todo_model.dart';
import 'package:todo_frontend/todo/data/todo_api.dart';

class TodoRepositoryImpl extends TodoRepository {
  //TODO: Injençao de dependencia com o todoApi!
  final TodoApi todoApi;

  TodoRepositoryImpl({required this.todoApi});

  @override
  Future<List<TodoModel>> getTodos() async {
    final list = await todoApi.getTodos();

    final todos = list.map((json) => TodoModel.fromMap(json)).toList();

    await Future.delayed(const Duration(seconds: 2));
    return todos;
  }
}

abstract class TodoRepository {
  Future<List<TodoModel>> getTodos();
}
