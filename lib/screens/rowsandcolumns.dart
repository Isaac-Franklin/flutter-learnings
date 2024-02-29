import 'package:flutter/material.dart';

void main() {
  runApp(Rowsandcolums());
}

class Rowsandcolums extends StatelessWidget {
  const Rowsandcolums({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        appBar: AppBar(
          title: Text('Hi, Welcome to rows and columns'),
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
        ),
        body: const Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                    child: Image(
                  image: NetworkImage(
                      'https://cdn.pixabay.com/photo/2023/11/07/15/29/puffin-8372701_1280.jpg'),
                  width: 200.0,
                )),
                Expanded(
                    // flex: 2,
                    child: Image(
                  image: NetworkImage(
                      'https://cdn.pixabay.com/photo/2023/11/07/15/29/puffin-8372701_1280.jpg'),
                  width: 200.0,
                )),
                Expanded(
                    child: Image(
                  image: NetworkImage(
                      'https://cdn.pixabay.com/photo/2023/11/07/15/29/puffin-8372701_1280.jpg'),
                  width: 200.0,
                ))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.star),
                Icon(Icons.star),
                Icon(Icons.star),
                Icon(Icons.star_border),
                Icon(Icons.star_border),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.phone_android,
                      size: 30.0,
                    ),
                    Text('Phone'),
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.share_arrival_time_outlined,
                      size: 30.0,
                    ),
                    Text('Alarm')
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.view_carousel_outlined,
                      size: 30.0,
                    ),
                    Text('Wifi')
                  ],
                )
              ],
            ),
          ],
        ));
    // );
  }
}
