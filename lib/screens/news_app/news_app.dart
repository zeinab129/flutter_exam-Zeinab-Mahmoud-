import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_exam_app/screens/news_app/model/news_model.dart';
import 'package:flutter_exam_app/screens/news_app/widgets/item_news.dart';
import 'package:google_fonts/google_fonts.dart';

class NewsAppScreen extends StatefulWidget {
  static const String routeName = "NEWS_APP_SCREEN";

  const NewsAppScreen({super.key});

  @override
  State<NewsAppScreen> createState() => _NewsAppScreenState();
}

class _NewsAppScreenState extends State<NewsAppScreen> {
  @override
  Widget build(BuildContext context) {
    int current = 0;

    List<String> tabs = ["Discover", "News", "Most Viewed", "Saved"];
    List<NewsModel> models = [
      NewsModel(
          title: "self-care",
          des: "10 Easy Self-Care Ideas That Can Help Boost Your Health",
          path: "assets/images/app3/ic_self_care.png"),
      NewsModel(
          title: "self-care",
          des: "10 Easy Self-Care Ideas That Can Help Boost Your Health",
          path: "assets/images/app3/ic_cycle.png"),
      NewsModel(
          title: "self-care",
          des: "10 Easy Self-Care Ideas That Can Help Boost Your Health",
          path: "assets/images/app3/ic_self_care.png"),
      NewsModel(
          title: "self-care",
          des: "10 Easy Self-Care Ideas That Can Help Boost Your Health",
          path: "assets/images/app3/ic_cycle.png"),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Image.asset("assets/images/app3/ic_logo.png"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                        8,
                      ),
                      borderSide:
                          const BorderSide(width: 1, color: Color(0XFFD0D5DD))),
                  hintText: "Articles, Video, Audio and More,...",
                  hintStyle: const TextStyle(
                      color: Color(0XFF667085),
                      fontWeight: FontWeight.w400,
                      fontSize: 16),
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Color(0XFF667085),
                  ),
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              SizedBox(
                height: 45,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        current = index;
                        setState(() {});
                      },
                      child: Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.only(right: 8),
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 12),
                        decoration: BoxDecoration(
                            color: current == index
                                ? const Color(0XFFD6BBFB)
                                : Color(0XFFE4E7EC),
                            borderRadius: BorderRadius.circular(32),
                            border: Border.all(
                                width: 1, color: const Color(0XFF667085))),
                        child: Text(
                          tabs[index],
                          style: GoogleFonts.inter(
                              color: current == index
                                  ? const Color(0XFF6941C6)
                                  : Color(0XFF667085),
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    );
                  },
                  itemCount: tabs.length,
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              Row(
                children: [
                  Text(
                    "Hot topics",
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
                        color: Color(0XFF5925DC)),
                  ),
                  const Icon(
                    Icons.arrow_forward_ios,
                    color: Color(0XFF5925DC),
                    size: 14,
                  ),
                ],
              ),
              const SizedBox(
                height: 18,
              ),
              CarouselSlider.builder(
                itemCount: models.length,
                itemBuilder: (
                  context,
                  index,
                  realIndex,
                ) {
                  return ItemNews(model: models[index]);
                },
                options: CarouselOptions(
                  enlargeCenterPage: true,
                  onPageChanged: (index, reason) {
                    current = index;
                    setState(() {});
                  },
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              Text(
                "Get Tips",
                style: GoogleFonts.inter(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 18,
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: const Color(0XFFF2F4F7),
                    borderRadius: BorderRadius.circular(12),
                    border:
                        Border.all(width: 1, color: const Color(0XFFE4E7EC))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset("assets/images/app3/ic_doctor.png"),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Connect with doctors &\n get suggestions",
                          style: GoogleFonts.inter(
                              fontSize: 14, fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Connect now and get\n expert insights ",
                          style: GoogleFonts.inter(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12)),
                              backgroundColor: Color(0XFF7F56D9)),
                          child: Text(
                            "View detail",
                            style: GoogleFonts.inter(
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                                color: Colors.white),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              Row(
                children: [
                  Text(
                    "Cycle Phases and Period",
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
                        color: const Color(0XFF5925DC)),
                  ),
                  const Icon(
                    Icons.arrow_forward_ios,
                    color: Color(0XFF5925DC),
                    size: 14,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        onTap: (value) {
          setState(() {});
        },
        items: const [
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/app3/ic_cal.png")),
              label: "Today"),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/app3/ic_grid.png")),
              label: "Insights"),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/app3/ic_chat.png")),
              label: "Chat"),
        ],
      ),
    );
  }
}
