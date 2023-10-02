import 'package:flutter_test/flutter_test.dart';
import 'package:todo_frontend/todo/data/todo_api.dart';

void main() {
  TodoApi todoApi = new TodoApiImpl();

  test('should return list todo', () async {
    var todos = await todoApi.getTodos();

    print(todos);
  });
}
