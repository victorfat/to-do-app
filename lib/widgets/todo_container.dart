import 'package:flutter/material.dart';
import 'package:myapp/models/todo_model.dart';

class TodoContainer extends StatelessWidget {
  final Todo todo;
  final bool isSelected;
  final Function(bool) onTodoChanged;

  const TodoContainer({super.key,
  required this.todo,
  required this.isSelected,
  required this.onTodoChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Checkbox(
            value: isSelected,
            onChanged: (bool? newValue){
              
            },
          )
        ],
      ),
    );
  }
}
