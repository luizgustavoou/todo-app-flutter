import 'package:flutter_test/flutter_test.dart';
import 'package:todo_frontend/todo/data/todo_api.dart';
import 'package:todo_frontend/todo/data/todo_repository.dart';

void main() {
  TodoApi todoApi = TodoApiImpl();
  TodoRepository todoRepository = TodoRepositoryImpl(todoApi: todoApi);

  test('should return a list todoModel', () async {
    var listTodoModel = await todoRepository.getTodos();

    print(listTodoModel);
  });
}
