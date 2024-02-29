import 'package:flutter/material.dart';

void main() {
  runApp(AppBarApp());
}

class AppBarApp extends StatelessWidget {
  const AppBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: null,
        ),
        title: Text('Home Page'),
        actions: [
          IconButton(onPressed: null, icon: Icon(Icons.search)),
          IconButton(onPressed: null, icon: Icon(Icons.shopping_cart)),
          IconButton(onPressed: null, icon: Icon(Icons.menu_book)),
        ],
        elevation: 15,
        backgroundColor: Colors.blue,
        // centerTitle: true,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),
        flexibleSpace: Image(
          image: NetworkImage(
              'https://cdn.pixabay.com/photo/2023/11/07/15/29/puffin-8372701_1280.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Welcome to the Home page',
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.black87),
          ),
          Text('I hope you have a good time here'),
          ElevatedButton.icon(
            icon: Icon(Icons.login_sharp),
            label: Text(
              'Click To Login',
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {
              print('Login deactivated');
            },
            // child: Text('Click To Login'),
            style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(10.0),
                // margin: EdgeInsets.all(10.0),
                backgroundColor: Colors.blue),
          ),
        ],
      )),
    );
  }
}
