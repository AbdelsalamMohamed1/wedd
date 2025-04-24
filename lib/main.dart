import 'package:flutter/material.dart';
import 'package:wedding_0/login_screen.dart';
import 'package:wedding_0/register_screen.dart';
import 'package:wedding_0/routes_names.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        RoutesNames.loginScreen:(context)=>LoginScreen(),
        RoutesNames.registerScreen:(context)=>RegisterScreen(),
      },
      initialRoute: RoutesNames.loginScreen,
    );
  }
}

