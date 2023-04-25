import 'package:finalproject/dashboard.dart';
import 'package:finalproject/first.dart';
import 'package:finalproject/landing.dart';
import 'package:finalproject/second.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Final',
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const Landing(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/first': (context) => const MyCustomForm(),
        '/second': (context) => const MyCustomForm2(),
        '/dashboard': (context) => const Dashboard(),
      },
    ),
  );
}
