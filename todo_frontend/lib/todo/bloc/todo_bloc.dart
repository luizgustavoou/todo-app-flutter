import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_frontend/todo/bloc/todo_events.dart';
import 'package:todo_frontend/todo/bloc/todo_state.dart';
import 'package:todo_frontend/todo/data/todo_api.dart';
import 'package:todo_frontend/todo/data/todo_repository.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  late final TodoApi todoApi;
  late final TodoRepository todoRepository;

  TodoBloc() : super(TodoInitialState()) {
    todoApi = TodoApiImpl();
    todoRepository = TodoRepositoryImpl(todoApi: todoApi);

    on<TodoLoadEvent>(
      (event, emit) async => emit(
        TodoSuccessState(todos: await todoRepository.getTodos()),
      ),
    );
  }
}
