import 'package:todo_frontend/todo/data/model/todo_model.dart';
import 'package:todo_frontend/todo/data/todo_api.dart';

class TodoRepositoryImpl extends TodoRepository {
  //TODO: Injençao de dependencia com o todoApi!
  final TodoApi todoApi;

  TodoRepositoryImpl({required this.todoApi});

  @override
  Future<List<TodoModel>> getTodos() async {
    final json = await todoApi.getTodos();

    final todos = json.map((e) => TodoModel.fromJson(e)).toList();

    return todos;
  }
}

abstract class TodoRepository {
  Future<List<TodoModel>> getTodos();
}
