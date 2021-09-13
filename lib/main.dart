import 'package:flutter/material.dart';
import 'package:teampro/pages/address_page.dart';
import 'package:teampro/pages/my_cupons_page.dart';
import 'package:teampro/pages/my_feelings_page.dart';
import 'package:teampro/pages/my_orders.dart';
import 'package:teampro/pages/myballs_page.dart';
import 'package:teampro/pages/order_details_page.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: MyFeelingsPage(),
      ),
    );
  }
}
