import 'package:flutter/material.dart';

// void main() => runApp(MyApp());//Todo: hanya di munculkan ketika mau di run saja

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const FirstScreen(),// Panggil FirstScreen di sini

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
          IconButton(onPressed: (){}, icon: const Icon(
            Icons.search,
            color: Colors.red,
          ))
        ],
        leading: IconButton(onPressed: (){}, icon: const Icon(
          Icons.menu,
          color: Colors.black,
        )),
      ), body: const Center(
      child: Text('Hello Word'),
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
 * Scaffold
    Scaffold merupakan sebuah widget yang digunakan untuk
    membuat tampilan dasar material design pada aplikasi Flutter,
    yang dapat disebut juga dasar sebuah halaman pada aplikasi Flutter.
    Scaffold di atas memiliki 3 bagian yaitu AppBar, Body, dan FloatingActionButton.
 */

/**
 * List Link:
 * 1.) Scaffold class
 * https://api.flutter.dev/flutter/material/Scaffold-class.html
 * 2.) Scaffold Sample Apps
 * https://flutter.github.io/samples/#
 */