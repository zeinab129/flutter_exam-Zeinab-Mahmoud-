import 'package:flutter/material.dart';

class DotBottomNavBar extends StatefulWidget {
  String path1, path2, path3, path4;
  Color selectedColor;
  Color unSelectedColor;

  DotBottomNavBar(
      {super.key,
      required this.path1,
      required this.path2,
      required this.path3,
      required this.path4,
      required this.selectedColor,
      required this.unSelectedColor});

  @override
  State<DotBottomNavBar> createState() => _DotBottomNavBarState();
}

class _DotBottomNavBarState extends State<DotBottomNavBar> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 0,
      onTap: (value) {
        index = value;
        setState(() {});
      },
      currentIndex: index,
      items: [
        bottomNavBarItem(
            index, 0, widget.path1, widget.selectedColor, widget.unSelectedColor),
        bottomNavBarItem(
            index, 1, widget.path2, widget.selectedColor, widget.unSelectedColor),
        bottomNavBarItem(
            index, 2, widget.path3, widget.selectedColor, widget.unSelectedColor),
        bottomNavBarItem(
            index, 3, widget.path4, widget.selectedColor, widget.unSelectedColor),
      ],
    );
  }
}

BottomNavigationBarItem bottomNavBarItem(
    int index, int position, String path, selectedColor, unSelectedColor) {
  return BottomNavigationBarItem(
    icon: Column(
      children: [
        Image.asset(path, color: index == position ? selectedColor : unSelectedColor),
        const SizedBox(
          height: 6,
        ),
        if (index == position)
          CircleAvatar(
            backgroundColor: selectedColor,
            radius: 3,
          )
      ],
    ),
    label: "",
  );
}
