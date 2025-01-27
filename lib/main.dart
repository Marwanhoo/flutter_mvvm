import 'package:flutter/material.dart';
import 'package:flutter_mvvm/view/home_view.dart';
import 'package:flutter_mvvm/view/posts_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: PostsView(),
    );
  }
}
