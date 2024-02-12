import 'package:flutter/material.dart';
import 'package:todo_riverpod/config/config.dart';
import 'package:todo_riverpod/screens/home_screen.dart';

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.light,
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}
