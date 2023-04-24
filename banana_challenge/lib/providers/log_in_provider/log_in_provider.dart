


import 'package:banana_challenge/providers/log_in_provider/services.dart';
import 'package:flutter/material.dart';

class LogInProvider extends ChangeNotifier{

  String? user = '';
  String? password = '';
  String response = '';
  bool errorAuth = false;

  setUser(String userParam) => user = userParam;
  setPassword(String passwordParam) => password = passwordParam;


  getAuth() async {
    response =  await postLogIn(user, password);
    if (response == 'success') {
      changeErroAuth(false);
    }else{
      changeErroAuth(true);
    }
    notifyListeners();
  }

  changeErroAuth(bool value){
    errorAuth = value;
    notifyListeners();
  }
  


}