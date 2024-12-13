import 'package:flutter/material.dart';

class StateViewModel extends ChangeNotifier{

String state="Simple cart with state";

void updateState(String newstate){
  state=newstate;
  notifyListeners();
}

}