import 'package:flutter/material.dart';

void main() {
    runApp(const MyApp());
}

class MyApp extends StatelessWidget {
    const MyApp({super.key});

    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            title: 'Simple To-Do',
            theme: ThemeData(
                colorScheme: ColorScheme.fromSeed(
                    seedColor: Colors.blue
                ),
                useMaterial3: true,
            ),
            home: const TodoListScreen(),

        );
    }
}

class TodoListScreen extends StatefulWidget {
    const TodoListScreen({super.key});

    @override
    State<TodoListScreen> createState() => _TodoListScreenState();
}

class _TodoListScreenState extends State<TodoListScreen> {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: const Text('My To-Do List'),
                backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            ),
            body: const Center(
                child: Text('Your to-dos will appear here')
            ),
        );
    }
}
