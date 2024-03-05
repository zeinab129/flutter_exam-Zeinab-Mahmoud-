import 'package:flutter/material.dart';

class ItemVibes extends StatelessWidget {
  const ItemVibes({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Color(0XFFECFDF3),
      ),
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Positive vibes",
                  style: TextStyle(
                      color: Color(0xff344054),
                      fontWeight: FontWeight.w600,
                      fontSize: 24),
                ),
                Text(
                  "Boost your mood with \npositive vibes",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 20),
                ),
                SizedBox(height: 8,),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 16,
                      backgroundColor: Color(0xff32D583),
                      child: Icon(
                        Icons.play_arrow_rounded,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      "10 mins",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 20),
                    )
                  ],
                )
              ],
            ),
            Image.asset(
              "assets/images/app1/ic_vibes.png",
              fit: BoxFit.fill,
            )
          ],
        ),
      ),
    );
  }
}
