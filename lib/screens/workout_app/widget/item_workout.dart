import 'package:flutter/material.dart';
import 'package:flutter_exam_app/screens/workout_app/model/workout_model.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemWorkout extends StatelessWidget {
  WorkoutModel model;

  ItemWorkout({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      margin: EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        color: const Color(0XFFF8F9FC),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(width: 1, color: const Color(0XFFEAECF5)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 18),
                decoration: BoxDecoration(
                    color: const Color(0XFFFCFCFD),
                    borderRadius: BorderRadius.circular(32),
                    border:
                        Border.all(width: 1, color: const Color(0XFFE4E7EC))),
                child: Text(
                  "${model.days} days",
                  style: GoogleFonts.inter(
                      fontSize: 14, fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              Text(
                model.title,
                style: GoogleFonts.inter(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    color: Colors.black),
              ),
              const SizedBox(
                height: 18,
              ),
              Text(
                model.desc,
                style: GoogleFonts.inter(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: Colors.black),
              ),
              const SizedBox(
                height: 18,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.access_time_rounded,
                    color: Color(0XFF101828),
                    size: 16,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    "${model.time} mins",
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w400, fontSize: 12),
                  )
                ],
              )
            ],
          ),
          Image.asset(
            model.imagePath,
            fit: BoxFit.fill,
            width: 125,
            height: 125,
          )
        ],
      ),
    );
  }
}
