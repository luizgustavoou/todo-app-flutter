// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:todo_frontend/todo/data/model/todo_model.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  final List<TodoModel> mockTodoList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Todo List'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: ListView.separated(
          itemCount: mockTodoList.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                child: Text(
                  mockTodoList[index].title.substring(0, 1).toUpperCase(),
                ),
              ),
              title: Text(mockTodoList[index].title),
              trailing: IconButton(
                icon: Icon(Icons.remove),
                onPressed: () {},
              ),
              onTap: () {},
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return Divider();
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Add todo',
        child: const Icon(Icons.add),
      ),
    );
  }
}
