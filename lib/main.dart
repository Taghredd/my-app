import 'dart:math';

import 'package:flutter/material.dart';
import 'package:new_application/ckeckout.dart';
import 'package:new_application/components.dart';
import 'package:new_application/customized.dart';
import 'package:new_application/hero.dart';
import 'package:new_application/hero2.dart';
import 'package:new_application/home_screen.dart';
import 'package:new_application/hotoffer.dart';
import 'package:new_application/login.dart';
import 'package:new_application/logo.dart';
import 'package:new_application/main1.dart';
import 'package:new_application/mainscreen.dart';
import 'package:new_application/order.dart';
import 'package:new_application/signup.dart';
import 'package:new_application/used.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(useMaterial3: false),
        home: Hero2());
  }
}
