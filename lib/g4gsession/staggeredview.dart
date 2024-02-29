import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

// List<StaggeredTile> cardTile = <StaggeredTile>[
//   StaggeredTile.count(2, 3),
// ];

class StaggeredTile {
  static Widget count(int i, num num) {}
}

class StaggeredView extends StatelessWidget {
  const StaggeredView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StaggeredGridView.countBuilder(
        itemBuilder: (BuildContext context, index) {
          return Container(
            color: Colors.blue,
            child: const Center(
              child: Text('Item'),
            ),
          );
        },
        crossAxisCount: 4,
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

class StaggeredGridView {
  static countBuilder(
      {required Container Function(BuildContext context, dynamic index)
          itemBuilder,
      required int crossAxisCount,
      required Function(int index) staggeredTileBuilder,
      required double mainAxisSpacing,
      required double crossAxisSpacing}) {}

  static count(
      {required int crossAxisCount,
      required List<StaggeredTile> staggeredTiles,
      required List<Widget> children,
      required double mainAxisSpacing,
      required double crossAxisSpacing}) {}
}
