import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_frontend/todo/bloc/todo_bloc.dart';
import 'package:todo_frontend/todo/bloc/todo_events.dart';
import 'package:todo_frontend/todo/data/model/todo_model.dart';

class TodoItem extends StatelessWidget {
  final TodoModel todo;

  const TodoItem({super.key, required this.todo});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        child: Text(
          todo.title.substring(0, 1).toUpperCase(),
        ),
      ),
      title: Text(todo.title),
      trailing: IconButton(
        icon: const Icon(Icons.remove),
        onPressed: () {
          context.read<TodoBloc>().add(TodoRemoveEvent(todo: todo));
        },
      ),
      onTap: () {},
    );
  }
}
