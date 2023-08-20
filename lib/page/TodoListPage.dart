import 'package:flutter/material.dart';
import 'package:flutter_application_1/bean/Todo.dart';
import 'package:flutter_application_1/page/DetailPage.dart';

class TodoListPage extends StatelessWidget {

  const TodoListPage({super.key, required this.todos});

  final List<Todo> todos;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todos'),
      ),
      body: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context,index){
          return ListTile(
            title: Text(todos[index].title),
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(todo: todos[index])
                )
              );
            },
          );
        }),
    );
  }
}
