// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_frontend/todo/bloc/todo_bloc.dart';
import 'package:todo_frontend/todo/bloc/todo_events.dart';
import 'package:todo_frontend/todo/bloc/todo_state.dart';

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
                    return ListTile(
                      leading: CircleAvatar(
                        child: Text(
                          state.todos[index].title
                              .substring(0, 1)
                              .toUpperCase(),
                        ),
                      ),
                      title: Text(state.todos[index].title),
                      trailing: IconButton(
                        icon: const Icon(Icons.remove),
                        onPressed: () {
                          context
                              .read<TodoBloc>()
                              .add(TodoRemoveEvent(todo: state.todos[index]));
                        },
                      ),
                      onTap: () {},
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return const Divider();
                  },
                );
              }

              return Container();
            },
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Add todo',
        child: const Icon(Icons.add),
      ),
    );
  }
}
