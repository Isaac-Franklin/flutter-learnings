import 'package:flutter/material.dart';

void main() {
  runApp(ListViewSession());
}

class ListViewSession extends StatelessWidget {
  const ListViewSession({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Users Profile',
          style: TextStyle(
            backgroundColor: Colors.grey[200],
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: CircleAvatar(
              child: const Icon(
                Icons.verified_user,
              ),
              backgroundColor: Colors.grey[200],
            ),
            title:const Text('Franklin Isaac'),
            subtitle:const Text('This is a creative full stack dev.'),
            trailing:const Icon(Icons.contact_mail),
            tileColor: Colors.amberAccent[200],
            onTap: () {},
          ),
          ListTile(
            leading: CircleAvatar(
              child: Icon(
                Icons.verified_user,
              ),
              backgroundColor: Colors.grey[200],
            ),
            title: Text('Chidinma Innocent'),
            subtitle: Text('This is a digital/internet marketer.'),
            trailing: Icon(Icons.contact_mail),
            tileColor: Colors.amberAccent[200],
          ),
          ListTile(
            leading: CircleAvatar(
              child: Icon(
                Icons.verified_user,
              ),
              backgroundColor: Colors.grey[200],
            ),
            title: Text('Charlse Nwadike'),
            subtitle: Text('This is a banking and investment expert.'),
            trailing: Icon(Icons.contact_mail),
            tileColor: Colors.amberAccent[200],
          ),
        ],
      ),
    );
  }
}
