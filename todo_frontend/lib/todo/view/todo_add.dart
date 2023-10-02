import 'package:flutter/material.dart';

class TodoAdd extends StatelessWidget {
  const TodoAdd({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Add Todo'),
      ),
    );
  }
}
