import 'package:flutter/material.dart';
import 'package:employee_counting_app/screens/login_screen.dart';
import 'package:employee_counting_app/screens/signup_screen.dart';
import 'package:employee_counting_app/pages/home_page.dart';
import 'package:employee_counting_app/pages/history_page.dart';
import 'package:employee_counting_app/pages/profile_page.dart';
import 'package:employee_counting_app/welcome_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EmpCounting',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textSelectionTheme: TextSelectionThemeData(
          cursorColor: Color(0xFF00695C),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => WelcomePage(),
        '/signup': (context) => SignUpPage(),
        '/login': (context) => LoginPage(),
        '/home': (context) => HomePage(),
        '/history': (context) => HistoryPage(),
        '/profile': (context) => ProfilePage(),
      },
    );
  }
}
