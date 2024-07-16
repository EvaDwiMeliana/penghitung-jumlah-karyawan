import 'dart:convert';
import 'package:http/http.dart' as http;

class SignUpService {
  static Future<void> signUp(String name, String email, String password) async {
    final response = await http.post(
      Uri.parse('http://192.168.141.107:5000/signup'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'name': name,
        'email': email,
        'password': password,
      }),
    );

    if (response.statusCode == 201) {
      // Successful sign-up
      return;
    } else if (response.statusCode == 409) {
      // Email already exists
      throw Exception('Email sudah digunakan');
    } else {
      // Other errors
      throw Exception('Gagal mendaftarkan akun pengguna');
    }
  }
}
