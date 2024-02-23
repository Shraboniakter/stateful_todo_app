import 'package:flutter/material.dart';

import 'ToDoPage.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'To DO App',
      home: ToDoPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
