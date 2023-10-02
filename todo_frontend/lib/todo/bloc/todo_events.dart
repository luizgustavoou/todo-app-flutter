import 'package:todo_frontend/todo/data/model/todo_model.dart';

abstract class TodoEvent {}

class TodoLoadEvent extends TodoEvent {}

class TodoAddEvent extends TodoEvent {
  String title;

  TodoAddEvent({required this.title});
}

class TodoRemoveEvent extends TodoEvent {
  TodoModel todo;

  TodoRemoveEvent({required this.todo});
}

class TodoUpdateEvent extends TodoEvent {}
