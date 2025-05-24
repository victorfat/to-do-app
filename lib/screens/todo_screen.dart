import 'package:flutter/material.dart';
import 'package:myapp/models/todo_model.dart';
import 'package:myapp/widgets/todo_bottom_sheet.dart';
import 'package:myapp/widgets/todo_container.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  List<Todo> todos = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Todos',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        toolbarHeight: 100,
        leading: Icon(Icons.list_alt, size: 32),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        centerTitle: false,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: onAddPressed,
        shape: CircleBorder(),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        child: Icon(Icons.add),
      ),
      body: Column(
        children: [
          for (int index = 0; index < todos.length; index++)
            TodoContainer(
              todo: todos[index],
              onTodoChanged: (bool newValue) {
                Todo newTodo = Todo(
                  content: todos[index].content,
                  isDone: !todos[index].isDone,
                );
                setState(() {
                todos[index] = newTodo;
                });
                },
            ),
        ],
      ),
    );
  }

  void onAddPressed() async {
    final result = await showModalBottomSheet(
      context: context,
      scrollControlDisabledMaxHeightRatio: 0.7,
      builder: (context) {
        return TodoBottomSheet();
      },
    );
    if (result != null && result is String) {
      setState(() {
        todos.add(Todo(content: result, isDone: false));
        print(todos);
      });
    }
  }
}
