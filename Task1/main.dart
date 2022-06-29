import 'package:flutter/material.dart';
import 'package:flutter_task1/boarding_page.dart';
import 'package:flutter_task1/logging_page.dart';
import 'package:flutter_task1/registering.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      routes: {
        '/home':(context) => HomeWidget(),
        '/login':(context) => LoginPage(),
        '/register':(context) => RegisterPage(),
      },
      
    );
  }
}
