import 'package:flutter/material.dart';
import 'package:myapp/screens/todo_splash_screen.dart';

class ChoiceScreen extends StatelessWidget {
  const ChoiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ButtonStyle(fixedSize: WidgetStatePropertyAll(Size(150,40)) ,
                backgroundColor: WidgetStatePropertyAll(Colors.blue),
                foregroundColor: WidgetStatePropertyAll(Colors.white),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TodoSplashScreen()),
                );
              },
              child: Text('Todo App', style: TextStyle(fontSize: 20)),
            ),
          ],
        ),
      ),
    );
  }
}
