import 'package:flutter_mvvm/model/counter_model.dart';

class HomeViewModel{
  String text = "Counter";

  CounterModel counterModel = CounterModel();


  int getCounter(){
    return counterModel.count;
  }

  void incrementCounter(){
    counterModel.count++;
  }

}