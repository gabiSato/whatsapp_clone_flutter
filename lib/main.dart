import 'package:flutter/material.dart';

import './screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Whatsapp Clone',
      theme: ThemeData(
        primaryColor: Color.fromRGBO(7, 94, 85, 1),
      ),
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
