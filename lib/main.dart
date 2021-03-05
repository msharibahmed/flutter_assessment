//packages
import 'package:flutter/material.dart';

//screens
import 'screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,//disable debug banner show
      theme: ThemeData(accentColor: Colors.blue, primarySwatch: Colors.amber),
      home: Home(),
    );
  }
}
