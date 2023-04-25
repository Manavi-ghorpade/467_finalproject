import 'package:flutter/material.dart';
import 'package:finalproject/first.dart';
import 'package:finalproject/second.dart';

class Landing extends StatefulWidget {
  const Landing({Key? key}) : super(key: key);
  @override
  State<Landing> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<Landing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TASK HERO"),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/first');
              },
              child: const Text('Register'),
            ),
            SizedBox(width: 8),
            Text("/"),
            SizedBox(width: 8),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/second');
              },
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
