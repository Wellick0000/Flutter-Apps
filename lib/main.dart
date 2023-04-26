import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Memes'),
          backgroundColor: Colors.deepPurpleAccent,
        ),
        body: MyMemeApp(),
      ),
    ),
  );
}

class MyMemeApp extends StatefulWidget {
  @override
  State<MyMemeApp> createState() => _MyMemeAppState();
}

class _MyMemeAppState extends State<MyMemeApp> {
  int memeset = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: TextButton(
            onPressed: () {
              setState(() {
                memeset = Random().nextInt(10);
              });
            },
            child: Image.asset('images/meme$memeset.jpg'),
          ))
        ],
      ),
    );
  }
}
