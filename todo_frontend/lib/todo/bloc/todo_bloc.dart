import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_frontend/todo/bloc/todo_events.dart';
import 'package:todo_frontend/todo/bloc/todo_state.dart';
import 'package:todo_frontend/todo/data/model/todo_model.dart';
import 'package:todo_frontend/todo/data/todo_api.dart';
import 'package:todo_frontend/todo/data/todo_repository.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  late final TodoApi todoApi;
  late final TodoRepository todoRepository;

  TodoBloc() : super(TodoInitialState()) {
    todoApi = TodoApiImpl();
    todoRepository = TodoRepositoryImpl(todoApi: todoApi);

    on<TodoLoadEvent>((event, emit) async {
      List<TodoModel> todos;
      try {
        todos = await todoRepository.getTodos();
        emit(
          TodoSuccessState(todos: todos),
        );
      } catch (err) {
        emit(TodoErrorState(message: err.toString()));
      }
    });

    on<TodoRemoveEvent>((event, emit) async {
      await todoRepository.removeTodo(event.todo);
      // emit(TodoInitialState());
      emit(TodoSuccessState(todos: await todoRepository.getTodos()));
    });
  }
}
