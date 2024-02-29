import 'package:flutter/material.dart';

class tabs extends StatelessWidget {
  final Color color;
  final String text;

  const tabs({super.key, required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 120,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            // ignore: unnecessary_this
            color: this.color,
            // blurRadius: 7,
            // offset: Offset(0, 0),
          ),
        ],
      ),
      child: Text(
        // ignore: unnecessary_this
        this.text,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
