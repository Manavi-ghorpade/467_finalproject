import 'package:flutter/material.dart';
import 'package:finalproject/first.dart';
import 'package:finalproject/second.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);
  @override
  State<Dashboard> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("TASK HERO"),
        ),
        body: Center(
          child: Column(
            children: const <Widget>[
              SizedBox(height: 16),
              Text(
                'YOUR TASKS',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
              ),
            ],
          ),
        ),
    );
  }
}
