import 'dart:convert';

class TodoModel {
  final String id;
  final String title;
  final bool completed;
  final String userId;

  TodoModel({
    required this.id,
    required this.title,
    required this.completed,
    required this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'completed': completed,
      'userId': userId,
    };
  }

  factory TodoModel.fromMap(Map<String, dynamic> map) {
    return TodoModel(
      id: map['id'] as String,
      title: map['title'] as String,
      completed: map['completed'] as bool,
      userId: map['userId'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory TodoModel.fromJson(String source) =>
      TodoModel.fromMap(json.decode(source) as Map<String, dynamic>);
}