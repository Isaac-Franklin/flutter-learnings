import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: ButtonSection()));
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Buttons Section',
          style: TextStyle(
              backgroundColor: Colors.yellow[700],
              fontSize: 20.0,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child:
            // ElevatedButton.icon(
            //   style: ElevatedButton.styleFrom(
            //     shape: StadiumBorder(),
            //   ),
            //   onPressed: () {},
            //   icon: const Icon(Icons.filter_list),
            //   label: const Text("Let's Begin!"),
            // ),
            OutlinedButton(
          // icon: Icon(Icons.add_card_outlined),
          // label: Text("Let's Begin!",),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Let's Begin!"),
              Icon(Icons.add_card_outlined),
            ],
          ),
          style: ElevatedButton.styleFrom(
              padding: EdgeInsets.all(10.0),
              fixedSize: Size(300, 70),
              textStyle: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              backgroundColor: Colors.yellow,
              // foregroundColor: Colors.black87,
              elevation: 15,
              shadowColor: Colors.black38,
              side: BorderSide(color: Colors.black87, width: 3),
              // alignment: Alignment.centerLeft),
              shape: StadiumBorder()),
          onPressed: () {
            print('You clicked here');
          },
        ),
      ),
    );
  }
}
