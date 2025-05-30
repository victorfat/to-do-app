import 'package:flutter/material.dart';
import 'package:myapp/screens/choice_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: ChoiceScreen()
    );
  }
}
