import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:flutter_exam_app/screens/mental_health_app/widgets/item_emoji.dart';
import 'package:flutter_exam_app/screens/mental_health_app/widgets/item_type.dart';
import 'package:flutter_exam_app/screens/mental_health_app/widgets/item_vibes.dart';
import 'package:flutter_exam_app/widgets/dotBottomNavBar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MentalHealthAppScreen extends StatefulWidget {
  static const String routeName = "MENTAL_HEALTH_APP_SCREEN";

  const MentalHealthAppScreen({super.key});

  @override
  State<MentalHealthAppScreen> createState() => _MentalHealthAppScreenState();
}

class _MentalHealthAppScreenState extends State<MentalHealthAppScreen> {
  int selectedIndex = 0;
  final PageController _pageController = PageController();

  final vibes = List.generate(3, (index) => const ItemVibes());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        appBar: AppBar(
          title: Image.asset("assets/images/app1/ic_logo.png"),
          actions: [
            badges.Badge(
              position: badges.BadgePosition.topEnd(end: 10, top: 0),
              child: Padding(
                padding: const EdgeInsets.only(right: 12.0),
                child: Image.asset("assets/images/app1/ic_bell.png"),
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "Hello, ",
                      style: GoogleFonts.inter(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: const Color(0XFF371B34)),
                    ),
                    Text(
                      "Sara Rose",
                      style: GoogleFonts.inter(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: const Color(0XFF371B34)),
                    )
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  "How are you feeling today ?",
                  style: GoogleFonts.inter(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: const Color(0XFF371B34)),
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ItemEmoji(
                      path: "assets/images/app1/ic_heart.png",
                      name: "Love",
                    ),
                    ItemEmoji(
                      path: "assets/images/app1/ic_sunglass.png",
                      name: "Cool",
                    ),
                    ItemEmoji(
                      path: "assets/images/app1/ic_happy.png",
                      name: "Happy",
                    ),
                    ItemEmoji(
                        path: "assets/images/app1/ic_sad.png",
                        name: "Sad")
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                Row(
                  children: [
                    Text(
                      "Feature",
                      style: GoogleFonts.inter(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                    const Spacer(),
                    Text(
                      "See more",
                      style: GoogleFonts.inter(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: const Color(0XFF027A48)),
                    ),
                    const Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0XFF027A48),
                      size: 14,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                SizedBox(
                  height: 200,
                  child: PageView.builder(
                    itemCount: vibes.length,
                    allowImplicitScrolling: true,
                    controller: _pageController,
                    itemBuilder: (_, index) {
                      return vibes[index];
                    },
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Container(
                  alignment: Alignment.center,
                  child: SmoothPageIndicator(
                    controller: _pageController,
                    count: vibes.length,
                    effect: const WormEffect(
                        dotHeight: 8,
                        dotWidth: 8,
                        dotColor: Color(0xffD9D9D9),
                        activeDotColor: Color(0XFF98A2B3)),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Row(
                  children: [
                    Text(
                      "Exercise",
                      style: GoogleFonts.inter(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                    const Spacer(),
                    Text(
                      "See more",
                      style: GoogleFonts.inter(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0XFF027A48)),
                    ),
                    const Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0XFF027A48),
                      size: 14,
                    ),
                  ],
                ),
                Row(
                  children: [
                    ItemType(
                      path: "assets/images/app1/ic_relax.png",
                      type: "Relaxation",
                      color: const Color(0XFFF9F5FF),
                    ),
                    const SizedBox(
                      width: 18,
                    ),
                    ItemType(
                        path: "assets/images/app1/ic_med.png",
                        type: "Meditation",
                        color: const Color(0XFFFDF2FA))
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    ItemType(
                      path: "assets/images/app1/ic_breath.png",
                      type: "Breathing",
                      color: const Color(0XFFFFFAF5),
                    ),
                    const SizedBox(
                      width: 18,
                    ),
                    ItemType(
                        path: "assets/images/app1/ic_yoga.png",
                        type: "Yoga",
                        color: const Color(0XFFF0F9FF))
                  ],
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: DotBottomNavBar(
          path1: "assets/images/app1/ic_home.png",
          path2: "assets/images/app1/ic_grid.png",
          path3: "assets/images/app1/ic_cal.png",
          path4: "assets/images/app1/ic_user.png",
          selectedColor: const Color(0XFF027A48),
          unSelectedColor: const Color(0XFF667085),
        ));
  }
}
