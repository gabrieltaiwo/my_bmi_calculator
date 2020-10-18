import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'screens/input_page.dart';
//import 'package:provider/provider.dart';

void main() {
  runApp(MyBMICalculator());
}

class MyBMICalculator extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'myBMI',
      theme: ThemeData(
        primaryColor: Color(0xFFFFFFFF),
        scaffoldBackgroundColor: Color(0xFFF5F5F5),
        textTheme: TextTheme(bodyText1: TextStyle(color: Colors.black)),
        primarySwatch: Colors.blue,
        // visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: InputPage(),
    );
  }
}
