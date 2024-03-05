import 'package:flutter/material.dart';

class ItemType extends StatelessWidget {

  String path;
  String type;
  Color color;

  ItemType({super.key, required this.path, required this.type, required this.color});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 18),
        decoration: BoxDecoration(
          color: Color(0xffF9F5FF),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(path),
            Text(type)
          ],
        ),
      ),
    );
  }
}
