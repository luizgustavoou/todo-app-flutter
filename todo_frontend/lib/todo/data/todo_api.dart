import 'package:dio/dio.dart';

class TodoApiImpl implements TodoApi {
  //TODO: Injetar dependencia de dio para testes!
  final dio = Dio();
  final String url = 'http://localhost:3000/todo';

  @override
  Future<List> getTodos() async {
    final response = await dio.get(url);

    final json = response.data as List;

    return json;
  }
}

abstract class TodoApi {
  Future<List> getTodos();
}
