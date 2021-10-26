// ignore_for_file: use_key_in_widget_constructors, unused_import

import 'package:TiMed/routes/app_routes.dart';
import 'package:TiMed/views/medForm.dart';
import 'package:flutter/material.dart';
import 'views/loginScreen.dart';
import 'views/registerScreen.dart';
import 'views/profileScreen.dart';
import 'package:TiMed/views/medList.dart';
import 'views/medRegister.dart';
import 'package:TiMed/views/loginScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TiMed Login Page',
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
      routes: {
        // AppRoutes.HOME: (_) => RemedioList(),
        // AppRoutes.REMEDIO_FORM: (_) => RemedioForm(),
      },
    );
  }
}
