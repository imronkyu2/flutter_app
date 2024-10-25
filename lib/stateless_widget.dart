import 'package:flutter/material.dart';

// void main() => runApp(MyApp());//Todo: hanya di munculkan ketika mau di run saja

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Scaffold(
        body: Center(
          child: Heading( // mengubah widget Text
            text:"Hello world!",
          ),
        ),
      ),
    );
  }
}

class Heading extends StatelessWidget {
  final String text;

  const Heading({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Text(
      text,
      style: const TextStyle(
        fontSize: 24.0,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

/***
 * Note:
 *StatelessWidget
    Setelah mengenal apa itu state, maka yang pertama kita akan bahas adalah StatelessWidget.
    StatelessWidget adalah widget yang nilai state-nya tidak dapat berubah (immutable) maka
    widget tersebut lebih bersifat statis dan memiliki interaksi yang terbatas.
 */

/**
 * final String text; // state text bersifat final
    const Heading({Key? key, required this.text}) : super(key: key); // lalu state text masuk ke constructor
 */

/**
 * Link: https://api.flutter.dev/flutter/widgets/StatelessWidget-class.html
 */