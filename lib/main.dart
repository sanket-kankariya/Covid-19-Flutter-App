import 'package:covid19ui/infopage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:covid19ui/home.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent));

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: InfoPage(),
  ));
}
