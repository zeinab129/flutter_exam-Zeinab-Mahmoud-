import 'package:flutter/material.dart';
import 'package:flutter_exam_app/screens/mental_health_app/mental_health_app.dart';
import 'package:flutter_exam_app/screens/news_app/news_app.dart';
import 'package:flutter_exam_app/screens/workout_app/workout_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: NewsAppScreen.routeName,
      routes: {
        MentalHealthAppScreen.routeName: (context) => const MentalHealthAppScreen(),
        WorkoutAppScreen.routeName: (context) => const WorkoutAppScreen(),
        NewsAppScreen.routeName: (context) => const NewsAppScreen()
      },
    );
  }
}
