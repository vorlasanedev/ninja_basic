import 'package:flutter/material.dart';
import 'package:ninja_basic/models/todo.dart';
import 'package:ninja_basic/utils/todo_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  /*
  ///[x] 1.1 local TextField valaible
  String _email = ''; // Class member for email
  ///[x] 2.1 local TextField emailController
  final _emailController = TextEditingController();
*/
  ///[x] FormKey
  final _formKey = GlobalKey<FormState>();
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();
  Priority _selectedPriority = Priority.low;

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
            /// List todo from TodoList
            Expanded(child: TodoList(todos: todos)),

            /// valaible and emailController
            /*
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
    */

            /// From Widget
            Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextFormField(
                    controller: _titleController,
                    maxLength: 20,
                    decoration: InputDecoration(
                      label: Text('Title'),
                      hintText: 'title',
                    ),
                    validator: (val) {
                      if (val == null || val.isEmpty) {
                        return 'Title is required!';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: _descriptionController,
                    maxLength: 20,
                    decoration: InputDecoration(
                      label: Text('Description'),
                      hintText: 'desc',
                    ),
                    validator: (val) {
                      if (val == null || val.isEmpty || val.length < 5) {
                        return 'Description is required! minimam 5 character';
                      }
                      return null;
                    },
                  ),

                  ///DropDown FormField
                  DropdownButtonFormField(
                    initialValue: _selectedPriority,
                    decoration: InputDecoration(
                      label: Text('Priority of todo'),
                    ),
                    items: Priority.values.map((p) {
                      return DropdownMenuItem(value: p, child: Text(p.title));
                    }).toList(),
                    onChanged: (Priority? value) {
                      // print(value);
                      setState(() {
                        _selectedPriority = value!;
                      });
                    },
                  ),

                  SizedBox(height: 20),
                  FilledButton(
                    onPressed: () {
                      _formKey.currentState!.validate();
                    },
                    style: FilledButton.styleFrom(
                      backgroundColor: Colors.green.shade400,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Text('Save'),
                  ),
                ],
              ),
            ),

            /// End Form Widget
          ],
        ),
      ),
    );
  }
}
