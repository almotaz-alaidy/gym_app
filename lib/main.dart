import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'screens/Singub.dart';
import 'screens/addpage.dart';
import 'screens/sign in.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "singub page": (context) => Singub(),
        "singin page": (context) => Sign_In(),
      },
      title: 'health sustem',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        brightness: Brightness.dark,
      ),
      home: Sign_In(),
    );
  }
}
