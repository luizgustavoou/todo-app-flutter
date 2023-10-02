// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_frontend/todo/bloc/todo_bloc.dart';
import 'package:todo_frontend/todo/bloc/todo_events.dart';
import 'package:todo_frontend/todo/bloc/todo_state.dart';
import 'package:todo_frontend/todo/view/todo_item.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  @override
  void initState() {
    super.initState();
    context.read<TodoBloc>().add(TodoLoadEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Todo List'),
      ),
      body: Padding(
          padding: const EdgeInsets.all(24.0),
          child: BlocBuilder<TodoBloc, TodoState>(
            builder: (context, state) {
              if (state is TodoInitialState) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state is TodoSuccessState) {
                return ListView.separated(
                  itemCount: state.todos.length,
                  itemBuilder: (context, index) {
                    return TodoItem(todo: state.todos[index]);
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return const Divider();
                  },
                );
              } else if (state is TodoErrorState) {
                return Container(
                  child: Text(state.message),
                );
              }

              return Container();
            },
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed('/todo/add');
        },
        tooltip: 'Add todo',
        child: const Icon(Icons.add),
      ),
    );
  }
}
