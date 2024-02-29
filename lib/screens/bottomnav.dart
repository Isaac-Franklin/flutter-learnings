import 'package:flutter/material.dart';
import './details.dart';
import './listtile.dart';
import './home.dart';

void main() {
  runApp(BottomNav());
}

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white,
          padding: const EdgeInsets.all(10.0),
          child: ListView(
            children: [
              Listtilenew(
                title: 'Na NIGERIA go win AFCON',
                subtitle: 'I am Nigerian-New',
                leadingIcon: Icons.travel_explore,
                trailingIcon: Icons.note,
              ),
              Listtilenew(
                title: 'Na Ghana go win AFCON ',
                subtitle: 'I am Ghanian-New',
              ),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const DetailsPage();
                  }));
                },
                icon: const Icon(
                  Icons.remove_red_eye_sharp,
                  color: Colors.white,
                ),
                label: const Text(
                  'Click Here',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  padding: const EdgeInsets.all(20),
                ),
              ),
            ],
          ),
        ),
        // child: Column(
        //   children: [
        //     ElevatedButton.icon(
        //       onPressed: () {
        //         Navigator.push(context, MaterialPageRoute(builder: (context) {
        //           return DetailsPage();
        //         }));
        //       },
        //       icon: const Icon(
        //         Icons.add_a_photo,
        //       ),
        //       label: const Text(
        //         'Click Here',
        //       ),
        //       style: ElevatedButton.styleFrom(
        //         backgroundColor: Colors.amber,
        //       ),
        //     )
        //   ],
        // ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        shape: CircularNotchedRectangle(),
        notchMargin: 5.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const HomePage();
                }));
              },
              child: columnmethod(),
            ),
            const Column(
              children: [
                Icon(
                  Icons.group,
                  color: Colors.yellow,
                ),
                Text(
                  'Groups',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            const Column(
              children: [
                Icon(
                  Icons.account_balance,
                  color: Colors.yellow,
                ),
                Text(
                  'Account',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            const Column(
              children: [
                Icon(
                  Icons.exit_to_app,
                  color: Colors.yellow,
                ),
                Text(
                  'Exit',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: const FloatingActionButton(
        shape: CircleBorder(),
        onPressed: null,
        child: Icon(Icons.add),
        backgroundColor: Colors.black,
        foregroundColor: Colors.yellow,
      ),
    );
  }

  Column columnmethod() {
    return const Column(
      children: [
        Icon(
          Icons.home,
          color: Colors.yellow,
        ),
        Text(
          'Home',
          style: TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}
