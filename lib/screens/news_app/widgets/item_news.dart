import 'package:flutter/material.dart';
import 'package:flutter_exam_app/screens/news_app/model/news_model.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemNews extends StatelessWidget {
  NewsModel model;

  ItemNews({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 100,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(image: AssetImage(model.path))),
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Spacer(),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
                  decoration: BoxDecoration(
                      color: const Color(0XFFFEF0C7),
                      borderRadius: BorderRadius.circular(4)),
                  child: Text(
                    model.title,
                    style: GoogleFonts.inter(
                        color: const Color(0XFF93370D),
                        fontWeight: FontWeight.w500,
                        fontSize: 12),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  model.des,
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Colors.white),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
