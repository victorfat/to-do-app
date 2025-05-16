import 'package:flutter/material.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Todos',
        style: TextStyle(fontSize: 30,
        fontWeight: FontWeight.bold),),
        toolbarHeight: 100,
        leading: Icon(Icons.list_alt, size: 32,),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
    );
  }
}