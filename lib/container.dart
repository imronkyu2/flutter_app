import 'package:flutter/material.dart';

// void main() => runApp(const MyApp());//Todo: hanya di munculkan ketika mau di run saja

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const FirstScreen(), // Panggil FirstScreen di sini
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
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.red,
            ),
          ),
        ],
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ),
      ),
      body: Center(
        child: Container(//Penerpan container
          width: 200,
          height: 200,
          color: Colors.blue, // Warna latar belakang container
          child: const Center(
            child: Text(
              'Hello World',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}

/**
 * Note:
 * Container
    Container adalah widget yang digunakan untuk melakukan styling,
    membuat sebuah shape (bentuk), dan layout pada widget child-nya.

 * Dekorasi Container
   Decoration merupakan bagian dari Container untuk styling.
    Pada decoration kita dapat menentukan warna background
    (solid/gradient color), shadow, border, border radius (membulatkan sudut),
    mengatur shape (bentuk), dan lain-lain.

 */


/**
 * List Link:
 * 1.) Container
 * https://api.flutter.dev/flutter/widgets/Container-class.html
 */
