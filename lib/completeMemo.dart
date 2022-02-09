import 'package:flutter/material.dart';
import 'package:febproject/memoArea.dart';
import 'package:febproject/voiceTexter.dart';

class completeMemo extends StatefulWidget {
  @override
  _completeMemoState createState() => _completeMemoState();
}

class _completeMemoState extends State<completeMemo> {
  var listMemo;

  @override
  Widget build(BuildContext context) {

    void addMemo() {
      setState(() {
        listMemo.add("楽天");
      });
    }
    return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(10,10,10,0),
              height: 220,
              width: double.maxFinite,
              child: Card(
                elevation: 5,
              ),
            ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

            SizedBox(
              height: 60,
              width: 60,
              child: ElevatedButton(
                child: const Icon(Icons.delete),
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                  onPrimary: Colors.white,
                  shape: const CircleBorder(
                    side: BorderSide(
                      color: Colors.red,
                      width: 1,
                      style: BorderStyle.solid,
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => memoArea()),
                          (_) => false);
                },
              ),
            ),

            SizedBox(
              height: 60,
              width: 60,
              child: ElevatedButton(
                child: const Icon(Icons.save_alt),
                style: ElevatedButton.styleFrom(
                  primary: Colors.yellow,
                  onPrimary: Colors.white,
                  shape: const CircleBorder(
                    side: BorderSide(
                      color: Colors.yellow,
                      width: 1,
                      style: BorderStyle.solid,
                    ),
                  ),
                ),
                onPressed: () {

                },
              ),
             ),

              SizedBox(
                height: 60,
                width: 60,
              child: ElevatedButton(
                child: const Icon(Icons.content_copy),
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                  onPrimary: Colors.white,
                  shape: const CircleBorder(
                    side: BorderSide(
                      color: Colors.blue,
                      width: 1,
                      style: BorderStyle.solid,
                    ),
                  ),
                ),
                onPressed: () {},
              ),
              )
            ],
          ),
          ],
        ),

      );
  }
}