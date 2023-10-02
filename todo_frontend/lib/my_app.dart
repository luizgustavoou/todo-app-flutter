import 'package:flutter/material.dart';
import 'package:todo_frontend/todo/view/todo_add.dart';
import 'package:todo_frontend/todo/view/todo_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        '/': (context) => const TodoPage(),
        '/todo/add': (context) => const TodoAdd(),
      },
      // home: const TodoPage(),
    );
  }
}
