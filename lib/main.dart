import 'package:flutter/material.dart';
import 'package:mobile_global_solution/screen/pages/login.page.dart';
import 'package:mobile_global_solution/screen/themes/app_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppTheme(),
      home: LoginPage(),
    );
  }
}
