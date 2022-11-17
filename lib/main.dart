import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vegcartui/HomeScreen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.green),
    home: HomeScreen(),
  ));
}
