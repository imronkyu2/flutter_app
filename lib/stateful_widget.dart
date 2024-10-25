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
          child: BiggerText(text:"Hello world!"), // Ubah widget Heading ke PerubahanText
        ),
      ),
    );
  }
}

class Heading extends StatelessWidget {
  final String text;

  const Heading({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 24.0,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class BiggerText extends StatefulWidget {
  final String text;
  const BiggerText({Key? key, required this.text}) : super(key: key);
  @override
  _BiggerTextState createState() => _BiggerTextState();
}
class _BiggerTextState extends State<BiggerText> {
  double _textSize = 16.0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(widget.text, style: TextStyle(fontSize: _textSize)),
        ElevatedButton(
          child: const Text("Perbesar"),
          onPressed: () {
            setState(() {
              _textSize = 32.0;
            });
          },
        )
      ],
    );
  }
}

/**
 * Note:
 * StatefulWidget
    Kebalikan dari StatelessWidget, StatefulWidget ialah widget yang
    state-nya dapat berubah-ubah nilainya, yang berarti StatefulWidget
    bersifat dinamis dan memiliki interaksi yang tak terbatas.
 */

/**
 *setState(() {
    _textSize = 32.0; // ukuran text diubah menjadi 32
    });
 */

/**
 * Link: https://api.flutter.dev/flutter/widgets/StatefulWidget-class.html
 */