import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Staggered GridView Example',
      home: StaggeredGridViewExample(),
    );
  }
}

class StaggeredGridViewExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Staggered GridView Example'),
      ),
      body: StaggeredGridView.countBuilder(
        crossAxisCount: 2, // Number of columns
        itemCount: 10, // Total number of items
        itemBuilder: (BuildContext context, int index) {
          return Container(
            color: Colors.blue,
            child: Center(
              child: Text('Item $index'),
            ),
          );
        },
        staggeredTileBuilder: (int index) {
          return StaggeredTile.count(
              1, index.isEven ? 1.5 : 1); // Item height varies
        },
        mainAxisSpacing: 8.0,
        crossAxisSpacing: 8.0,
      ),
    );
  }
}
