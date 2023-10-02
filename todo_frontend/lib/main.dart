import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_frontend/my_app.dart';
import 'package:todo_frontend/todo/bloc/todo_bloc.dart';

void main() {
  runApp(
    BlocProvider(
      create: (context) => TodoBloc(),
      child: const MyApp(),
    ),
  );
}
