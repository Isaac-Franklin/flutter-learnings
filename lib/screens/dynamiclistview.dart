import 'package:flutter/material.dart';

void main() {
  runApp(DynamicListView());
}

List<String> products = ['Laptop', 'Phone', 'Tablet'];
List<String> productdetails = [
  'A MacBook Laptop',
  'A highend mobile device',
  'An abble tablet with foldable screen'
];
List<int> productsprices = [360000, 270000, 175000];

class DynamicListView extends StatelessWidget {
  const DynamicListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView.builder(
          padding: EdgeInsets.all(10),
          itemCount: products.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              leading: CircleAvatar(
                child: Text(products[index][0]),
                backgroundColor: Colors.yellow,
              ),
              title: Text(products[index]),
              subtitle: Text(productdetails[index]),
              trailing: Text(productsprices[index].toString()),
              tileColor: Colors.lightBlue[200],
            );
          },
        ),
      ),
    );
  }
}
