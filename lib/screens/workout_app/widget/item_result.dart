import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemResult extends StatelessWidget {
  String icon, title, subTitle, unit;

  ItemResult(
      {super.key,
      required this.icon,
      required this.title,
      required this.subTitle,
      required this.unit});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(icon),
              const SizedBox(width: 4,),
              Text(title,
                  style: GoogleFonts.inter(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 12))
            ],
          ),
          const SizedBox(height: 8,),
          Row(
            children: [
              Text(
                subTitle,
                style: GoogleFonts.inter(
                    color: Colors.black, fontWeight: FontWeight.w600, fontSize: 18),
              ),
              const SizedBox(width: 4,),
              Text(
                unit,
                style: GoogleFonts.inter(
                    color: Colors.black, fontWeight: FontWeight.w500, fontSize: 14),
              )
            ],
          )
        ],
      ),
    );
  }
}
