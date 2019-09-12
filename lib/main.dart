import 'package:flutter/material.dart';
import 'dart:developer';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

import 'cadastro/cadastro_page.dart';
import 'login/login_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    debugPaintSizeEnabled = false;
    SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp
      
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: LoginPage()//LoginPage()
    );
  }
}

