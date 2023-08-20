import 'package:flutter/material.dart';
import 'package:flutter_application_1/bean/Todo.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key,required this.todo});

  final Todo todo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(todo.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Text(todo.description),
      ),
    );
  }

}