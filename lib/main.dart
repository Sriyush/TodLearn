import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:todlearn/screens/login.dart';
import 'dart:ui';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    await Firebase.initializeApp();
  } catch (e) {
    print('Failed to initialize Firebase: $e');
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kids Learning App',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      initialRoute: '/',
      routes: {
        '/':(context) => MyLogin(),
        // '/ (context)':(context) =>  HomeScreen(),
        // '/math_module': (context) => MathModuleScreen(),
        // '/english_module': (context) => EnglishModuleScreen(),
        // '/addition': (context) => AdditionScreen(),
        // '/subtraction': (context) => SubtractionScreen(),
        // '/counting': (context) => CountingGameScreen(),
        // '/alphabets': (context) => AlphabetScreen(),
        // '/words': (context) => WordsScreen(),
      },
    );
  }
}