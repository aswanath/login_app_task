import 'package:flutter/material.dart';
import 'package:login_app_task/presentation/login/login_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      darkTheme: ThemeData(
        primarySwatch: Colors.red
      ),
      themeMode: ThemeMode.dark,
      home: LoginPage(),
    );
  }
}