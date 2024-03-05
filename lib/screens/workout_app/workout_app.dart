import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter_exam_app/screens/workout_app/tabs/all_types.dart';
import 'package:flutter_exam_app/screens/workout_app/tabs/full_body.dart';
import 'package:flutter_exam_app/screens/workout_app/tabs/lower.dart';
import 'package:flutter_exam_app/screens/workout_app/tabs/upper.dart';
import 'package:flutter_exam_app/screens/workout_app/widget/item_result.dart';
import 'package:flutter_exam_app/widgets/dotBottomNavBar.dart';
import 'package:google_fonts/google_fonts.dart';

class WorkoutAppScreen extends StatelessWidget {
  static const String routeName = "WORKOUT_APP_SCREEN";

  const WorkoutAppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          appBar: AppBar(
            title: Row(
              children: [
                Image.asset("assets/images/app2/ic_profile.png"),
                const SizedBox(
                  width: 12,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hello, Jade",
                      style: GoogleFonts.inter(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      "Ready to workout?",
                      style: GoogleFonts.inter(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                )
              ],
            ),
            actions: [
              badges.Badge(
                position: badges.BadgePosition.topEnd(end: 14, top: 4),
                child: const Padding(
                  padding: EdgeInsets.only(right: 12.0),
                  child: Icon(
                    Icons.notifications_outlined,
                    color: Colors.black,
                    size: 32,
                  ),
                ),
              )
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(18),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: const Color(0xffF8F9FC),
                      borderRadius: BorderRadius.circular(18)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ItemResult(
                          icon: "assets/images/app2/ic_heart.png",
                          title: "Heart Rate",
                          subTitle: "81",
                          unit: "BPM"),
                      Container(
                        width: 2,
                        height: 50,
                        decoration: const BoxDecoration(
                          color: Color(0XFFD9D9D9),
                        ),
                      ),
                      ItemResult(
                        icon: "assets/images/app2/ic_menu.png",
                        title: "To-do",
                        subTitle: "32,5",
                        unit: "%",
                      ),
                      Container(
                        width: 2,
                        height: 50,
                        decoration: const BoxDecoration(
                          color: Color(0XFFD9D9D9),
                        ),
                      ),
                      ItemResult(
                        icon: "assets/images/app2/ic_fire.png",
                        title: "Calo",
                        subTitle: "1000",
                        unit: "Cal",
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 18,
                ),
                Text(
                  "Workout Programs",
                  style: GoogleFonts.inter(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 18),
                ),
                const SizedBox(
                  height: 18,
                ),
                TabBar(
                  unselectedLabelStyle: GoogleFonts.inter(
                      color: const Color(0XFF667085),
                      fontSize: 13,
                      fontWeight: FontWeight.w400),
                  labelStyle: GoogleFonts.inter(
                      color: const Color(0XFF363F72),
                      fontSize: 13,
                      fontWeight: FontWeight.w500),
                  tabs: const [
                    Tab(
                      child: Text(
                        "All Type",
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Full Body",
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Upper",
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Lower",
                      ),
                    )
                  ],
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      AllTypesScreen(),
                      const FullBodyScreen(),
                      const UpperScreen(),
                      const LowerScreen()
                    ],
                  ),
                )
              ],
            ),
          ),
          bottomNavigationBar: DotBottomNavBar(
            path1: "assets/images/app2/ic_home.png",
            path2: "assets/images/app2/ic_send.png",
            path3: "assets/images/app2/ic_data.png",
            path4: "assets/images/app2/ic_user.png",
            selectedColor: const Color(0XFF363F72),
            unSelectedColor: const Color(0XFF667085),
          )),
    );
  }
}
