import 'package:flutter/material.dart';
import 'package:ninja_basic/models/todo.dart';
import 'package:ninja_basic/utils/todo_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ///[x] 1.1 local TextField valaible
  String _email = ''; // Class member for email
  ///[x] 2.1 local TextField emailController
  final _emailController = TextEditingController();

  final List<Todo> todos = [
    Todo(
      title: 'Buy Milk',
      description: 'There is ni milk',
      priority: Priority.high,
    ),
    Todo(
      title: 'make bed',
      description: 'There is ni milk',
      priority: Priority.medium,
    ),
    Todo(
      title: 'Pay bil',
      description: 'There is ni milk',
      priority: Priority.low,
    ),
    Todo(
      title: 'pay phone',
      description: 'There is ni milk',
      priority: Priority.urgent,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Todo lists')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(child: TodoList(todos: todos)),

            ///[x]1.2 TextField Email
            TextField(
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(label: Text('Email address')),

              ///[x]1.3 setState for TextField
              onChanged: (value) {
                setState(() {
                  _email = value.trim();
                });
              },
            ),
            SizedBox(height: 20),

            ///[x] 1.4 show state
            Text('Your email: $_email', style: TextStyle(color: Colors.green)),

            SizedBox(height: 12),

            ///[x] 2.2 Call and print in debug console _emailController
            FilledButton(
              onPressed: () {
                print(
                  _emailController.text.trim().isEmpty
                      ? 'Text field empty'
                      : _emailController.text.trim(),
                );
              },
              child: Text('Email Controller'),
            ),
          ],
        ),
      ),
    );
  }
}
