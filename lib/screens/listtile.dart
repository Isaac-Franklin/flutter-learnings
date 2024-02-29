import 'package:flutter/material.dart';

class Listtilenew extends StatelessWidget {
  String title, subtitle;
  IconData leadingIcon, trailingIcon;

  Listtilenew({
    required this.title,
    required this.subtitle,
    this.leadingIcon = Icons.mark_as_unread,
    this.trailingIcon = Icons.delete,
  });

  // const listtilenew({
  //   super.key,
  // });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
          side: const BorderSide(
            width: 1.0,
            color: Colors.red,
          )),
      leading: IconButton(
        onPressed: null,
        icon: Icon(
          leadingIcon,
        ),
      ),
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 20.0,
        ),
      ),
      subtitle: Text(
        subtitle,
        style: const TextStyle(
          fontSize: 12.0,
        ),
      ),
      trailing: Icon(trailingIcon),
    );
  }
}
