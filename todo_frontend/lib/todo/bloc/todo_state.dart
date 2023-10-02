import 'package:todo_frontend/todo/data/model/todo_model.dart';

abstract class TodoState {
  List<TodoModel> todos;

  TodoState({required this.todos});
}

class TodoInitialState extends TodoState {
  TodoInitialState() : super(todos: []);
}

class TodoLoadingState extends TodoState {
  TodoLoadingState() : super(todos: []);
}

class TodoSuccessState extends TodoState {
  TodoSuccessState({required List<TodoModel> todos}) : super(todos: todos);
}

class TodoErrorState extends TodoState {
  final String message;
  TodoErrorState({required this.message}) : super(todos: []);
}

// class TodoErrorState2 extends TodoState {
//   final Exception exception;
//   TodoErrorState2({required this.exception}) : super(todos: []);
// }
