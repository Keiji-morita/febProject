import 'package:febproject/completeMemo.dart';
import 'package:flutter/material.dart';
import 'package:febproject/memoArea.dart';

class voiceTexter extends StatefulWidget {
  @override
  _voiceTexterState createState() => _voiceTexterState();
}

class _voiceTexterState extends State<voiceTexter> {
    var _textController = TextEditingController();
    String _text = '';
    @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Taking note with voice'),
      ),
      body:  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(_text, style: TextStyle(color: Colors.blue)),
        const SizedBox(height: 8),

        TextField(
          onChanged: (String value) {
            setState(() {
              _text = value;
            });
          },
          controller: _textController,
        ),
      ],
    ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
    onPressed: () {
      print(_text);
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => completeMemo(_text)),
      );
    },
    backgroundColor: Colors.red,
    child: const Icon(Icons.pause_circle_filled),
     ),
    );
  }
}

