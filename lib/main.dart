import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: TopApp(),
  ));
}

class TopApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Ask The Sorceress!',
          style: TextStyle(
            color: Colors.lightBlueAccent,
            fontFamily: 'Ghost',
            fontSize: 30.0,
          ),
        ),
      ),
      body: ProphesyApp(),
    );
  }
}

class ProphesyApp extends StatefulWidget {
  @override
  _ProphesyAppState createState() => _ProphesyAppState();
}

class _ProphesyAppState extends State<ProphesyApp> {
  int imageNumber = 2;
  void answerQuestion() {
    setState(() {
      imageNumber = Random().nextInt(4) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage('images/sorceress.jpeg'),
        fit: BoxFit.cover,
      )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: FlatButton(
              onPressed: () {
                answerQuestion();
              },
              child: Image.asset(
                'images/prediction$imageNumber.png',
                width: 250.0,
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: Text(
                'Ask Anything and Press the Prophesy circle!',
                style: TextStyle(
                  fontFamily: 'Ghost',
                  fontSize: 20.0,
                  color: Colors.white,
                  backgroundColor: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
