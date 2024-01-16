import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:e_learning_ui/api/loginResponse.dart';

class AuthApi {
  login({required String email, required String password}) async {
    var client = http.Client();
    var response = await client.post(

    //  Uri.parse('http://localhost:8020/api/auth/login'),
    //  Uri.parse('http://192.168.1.130:8020/api/auth/login'),

     // Uri.parse('https://keen-merkle.149-202-71-30.plesk.page/api/auth/login'),
     Uri.parse('https://beautycity.tn/api/auth/login'),

      headers: {
        "Accept": "application/json",
        "Content-Type": "application/x-www-form-urlencoded",

      },
      body: {
        "email": email,
        "password": password,
      },
    );

    LoginResponse loginResponse = LoginResponse(statusCode: response.statusCode, error: json.decode(response.body)['error'], message: json.decode(response.body)['message']);
    return loginResponse;
  }
}
