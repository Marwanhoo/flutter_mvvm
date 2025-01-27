import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_mvvm/cubit/post_cubit.dart';
import 'package:flutter_mvvm/repository/post_repository.dart';
import 'package:flutter_mvvm/services/api_service.dart';
import 'package:flutter_mvvm/view/post_view.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MVVM with Cubit',
      home: BlocProvider(
        create: (_) => PostCubit(PostRepository(ApiService())),
        child: PostView(),
      ),
    );
  }
}
