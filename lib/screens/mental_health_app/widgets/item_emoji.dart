import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemEmoji extends StatelessWidget {

  String path;
  String name;

  ItemEmoji({super.key, required this.path, required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: (){

          },
          child: CircleAvatar(
            radius: 32,
            backgroundColor: Colors.grey.shade200,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                path
              ),
            ),
          ),
        ),
        Text(name, style: GoogleFonts.inter(color: Colors.black, fontWeight: FontWeight.w400, fontSize: 14),)
      ],
    );
  }
}
