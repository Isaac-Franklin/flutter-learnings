import 'package:flutter/material.dart';

class mailold extends StatelessWidget {
  const mailold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        'Welcome to Your Dashboard',
        style: TextStyle(backgroundColor: Colors.red),
      )),
      body: Container(
        // color: Colors.deepPurple[600],
        width: 250.0,
        height: 250.0,
        padding: EdgeInsets.all(20.0),
        margin: EdgeInsets.all(20.0),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            // color: Colors.blue,
            // borderRadius: BorderRadius.circular(10.0),
            border: Border.all(color: Colors.grey, width: 5.0),
            shape: BoxShape.circle,
            image: DecorationImage(
              image: NetworkImage(
                  'https://cdn.pixabay.com/photo/2023/11/07/15/29/puffin-8372701_1280.jpg'),
              fit: BoxFit.cover,
            ),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade50,
                  blurRadius: 7,
                  spreadRadius: 5,
                  offset: Offset(4, 4))
            ]),
        child: Text(
          'Welcome Back',
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      // extendBody: Container(
      //   child: ElevatedButton(onPressed: null, label: 'Press'),
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('you clicked me');
        },
        child: Text('Click'),
      ),
    );
    ;
  }
}
