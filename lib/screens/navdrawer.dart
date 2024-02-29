import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(NavDrawer());
}

class NavDrawer extends StatelessWidget {
  const NavDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('This is the app bar'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                padding: const EdgeInsets.all(0),
                child: Container(
                  child: Column(
                    children: [
                      Text('Hi there,'),
                    ],
                  ),
                  color: Colors.blueAccent,
                )),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
            ),
            ListTile(
              leading: Icon(Icons.shop),
              title: Text('Shop'),
            ),
            ListTile(
              leading: Icon(Icons.favorite),
              title: Text('Favourite'),
            )
          ],
        ),
      ),
    );
  }
}
