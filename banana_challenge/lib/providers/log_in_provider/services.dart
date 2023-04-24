import 'dart:convert';

import 'package:banana_challenge/models/user.dart';
import 'package:http/http.dart' as http;




Future<String> postLogIn(String? user, String? password) async {
  try{
    if (user != null && user.isNotEmpty && password != null && password.isNotEmpty) {

      String body = jsonEncode({
        "username" : user,
        "password": password
      });

      http.Response jsonLoginIn = await http.post(
        Uri.parse("https://dummyjson.com/auth/login"),
        headers: {"Content-Type": "application/json"}, body: body,
      ).timeout(const Duration(seconds: 5));
      // ignore: unused_local_variable
      User? userResponse ;
      String? message;
      try{
        userResponse = User.fromRawJson(jsonLoginIn.body);
        return 'success';
      }
      catch(e){


        try{
          message = jsonDecode(jsonLoginIn.body)['message'];
          return message!;
        }
        catch(e){
          throw Error();
        }

      }

    }
    return 'Debe ingresar el usuario y la contraseña';
  }
  catch(e){
    return 'Ha ocurrido un error inesperado';

  }

}