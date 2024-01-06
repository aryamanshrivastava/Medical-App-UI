// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'component/bottom_bar.dart';
import 'style/app_style.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppStyle.theme,
      title: 'Doctor Appointment',
      home: BottomBar(),
    );
  }
}
