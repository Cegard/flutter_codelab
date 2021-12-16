import 'package:flutter/material.dart';
import './splash_widget.dart';

const Color mainColor = Color(0xFFFF5656);

void main() {
  runApp(
      const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashPage(mainColor),
      )
  );
}
