import 'package:flutter/material.dart';
import 'package:teampro/pages/adress_page.dart';
import 'package:teampro/pages/myballs_page.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: MyBallPage(),
      ),
    );
  }
}
