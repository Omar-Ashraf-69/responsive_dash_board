import 'package:flutter/material.dart';
import 'package:responsive_dash_board_project/views/dash_board_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Responsive Dash Board',
      debugShowCheckedModeBanner: false,
      home: DashBoardView(),
    );
  }
}
