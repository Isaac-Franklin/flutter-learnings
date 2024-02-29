import 'package:flutter/material.dart';

// void main(List<String> args) {
//   runApp(Datapage());
// }

class Datapage extends StatelessWidget {
  Datapage({super.key, required this.productname});

  String productname;
  // Datapage({
  //   this.productname
  // })

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ElevatedButton.icon(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back),
            label: const Text(
              'Return',
            ),
            style: ElevatedButton.styleFrom(
                side: BorderSide(style: BorderStyle.none)),
          ),
          ListTile(
            leading: const Icon(
              Icons.verified_outlined,
            ),
            title: Text(productname),
          )
        ],
      ),
    );
  }
}
