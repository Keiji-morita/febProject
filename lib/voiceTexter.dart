import 'package:flutter/material.dart';
import 'package:febproject/memoArea.dart';

class voiceTexter extends StatefulWidget {
  @override
  _voiceTexterState createState() => _voiceTexterState();
}

class _voiceTexterState extends State<voiceTexter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Taking note with voice'),
      ),
      body:  const Center(child: Text('-----------------')),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
    onPressed: () {},
    backgroundColor: Colors.red,
    child: const Icon(Icons.pause_circle_filled),
     ),
    );
  }
}

