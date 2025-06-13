import 'package:flutter/material.dart';
import 'package:wedding_0/Config/routes_names.dart';
import 'package:wedding_0/features/login/presentation/pages/login_screen.dart';
import 'package:wedding_0/features/register/presentation/pages/register_screen.dart';

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

