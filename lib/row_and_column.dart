import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const <Widget>[
                Icon(Icons.share),
                Icon(Icons.thumb_up),
                Icon(Icons.thumb_down),
              ],
            ),
            const SizedBox(height: 20), // Jarak antara Row dan Column berikutnya
            Column(
              children: const <Widget>[
                Text(
                  'Sebuah Judul',
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
                Text('Lorem ipsum dolor sit amet'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
