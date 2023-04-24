import 'dart:convert';

import 'package:http/http.dart' as http;




Future<String> postLogIn(String? user, String? password) async {
  if (user != null && password != null) {
    print(user);
    print(password);

    String body = jsonEncode({
      "Usuario" : user,
      "Contraseña": password
    });

    http.Response jsonLoginIn = await http.post(
      Uri.parse("https://dummyjson.com/auth/login"),
      headers: {"Content-Type": "application/json"}, body: body,
    ).timeout(const Duration(seconds: 5));
    
    String message = jsonDecode(jsonLoginIn.body)['message'];
    print(message);
    return message;
  }
  return 'Ha ocurrido un error inesperado';

}