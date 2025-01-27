import 'package:flutter/material.dart';
import 'package:flutter_mvvm/view_model/home_view_model.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  HomeViewModel homeViewModel = HomeViewModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter MVVM"),
      ),
      body: Column(
        children: [
          Text(homeViewModel.text),
          Text("${homeViewModel.getCounter()}"),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {

          });
          homeViewModel.incrementCounter();
          debugPrint(homeViewModel.getCounter().toString());
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
