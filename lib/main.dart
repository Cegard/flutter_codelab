import 'package:flutter/material.dart';
import './home_widget.dart';

const Color mainColor = Color(0xFFFF5656);

void main() {
  runApp(
      const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(mainColor), //SplashPage(mainColor),
      )
  );
}
