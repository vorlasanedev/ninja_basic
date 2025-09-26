import 'package:flutter/material.dart';
import 'package:ninja_basic/models/todo.dart';

class TodoList extends StatefulWidget {
  const TodoList({super.key, required this.todos});
  final List<Todo> todos;
  @override
  State<TodoList> createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.todos.length,
      itemBuilder: (_, index) {
        final todo = widget.todos[index]; // Access your todo item
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 6),
          child: Container(
            decoration: BoxDecoration(
              color: todo.priority.color.withValues(alpha: 0.5),
              borderRadius: BorderRadius.circular(8),
            ),
            padding: EdgeInsets.only(left: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      todo.title,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(todo.description),
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: todo.priority.color,
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(
                      color: Colors.black26,
                      width: 1,
                    ), // optional border
                  ),
                  child: Text(todo.priority.title),
                ),
              ],
            ),
          ),
        );
      }, // no semicolon here
    );
  }
}
