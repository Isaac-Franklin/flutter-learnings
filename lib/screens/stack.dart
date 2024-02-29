import 'package:flutter/material.dart';

void main() {
  runApp(StackApp());
}

class StackApp extends StatelessWidget {
  const StackApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.red[400],
          padding: const EdgeInsets.all(20.0),
          // decoration: BoxDecoration(
          //   borderRadius: BorderRadius.circular(10.0),
          //   image: const DecorationImage(
          //     image: NetworkImage(
          //         'https://cdn.pixabay.com/photo/2023/11/07/15/29/puffin-8372701_1280.jpg'),
          //   ),
          // ),
          constraints: const BoxConstraints(
            maxHeight: 500,
            maxWidth: 300,
          ),
          child: const Stack(
            children: [
              Positioned(
                bottom: 0,
                child: Text('Full name'),
              ),
              Positioned(
                top: 0,
                child: Text('email address'),
              ),
              Positioned(
                bottom: 20,
                child: Text('Profession'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
