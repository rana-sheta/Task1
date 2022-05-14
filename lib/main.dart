import 'package:flutter/material.dart';
import 'package:page/screens/first_screna.dart';
import 'package:page/screens/page_one.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
   const MyApp({Key? key}) : super(key: key);
    //final _formKey=GlobalKey<FormState>();
    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        title: 'flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue
        ),
        home: ScreenOne(),

      );
    }
}




