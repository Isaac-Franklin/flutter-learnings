import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: Home()));
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Welcome Back',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, letterSpacing: 2.0),
        ),
        centerTitle: true,
        backgroundColor: Colors.red[400],
      ),
      body: Center(
          child: ElevatedButton.icon(
        onPressed: null,
        icon: Icon(
          Icons.mail,
        ),
        label: Text('Send an email'),
        // color: Color.amber
      )
          //     Icon(
          //   Icons.airport_shuttle,
          //   color: Colors.lightBlue,
          //   size: 100,
          //
          // Image(
          //     image: (NetworkImage(
          //         'https://cdn.pixabay.com/photo/2023/11/07/15/29/puffin-8372701_1280.jpg')))
          //   Text(
          // 'Hello World',
          // style: TextStyle(
          //     fontSize: 50, fontWeight: FontWeight.bold, letterSpacing: 3.0),
          // ),

          ),
      floatingActionButton: const FloatingActionButton(
        onPressed: null,
        backgroundColor: Colors.green,
        child: Text(
          'Click',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
