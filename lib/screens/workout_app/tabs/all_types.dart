import 'package:flutter/material.dart';
import 'package:flutter_exam_app/screens/workout_app/model/workout_model.dart';
import 'package:flutter_exam_app/screens/workout_app/widget/item_workout.dart';

class AllTypesScreen extends StatelessWidget {
  AllTypesScreen({super.key});

  List<WorkoutModel> models = [
    WorkoutModel(
        imagePath: "assets/images/app2/ic_stretch.png",
        title: "Morning Yoga",
        desc: "Improve mental focus.",
        time: "30",
        days: "7"),
    WorkoutModel(
        imagePath: "assets/images/app2/ic_plank.png",
        title: "Plank Exercise",
        desc: "Improve posture and stability.",
        time: "30",
        days: "3"),
    WorkoutModel(
        imagePath: "assets/images/app2/ic_stretch.png",
        title: "Morning Yoga",
        desc: "Improve mental focus.",
        time: "30",
        days: "7"),
    WorkoutModel(
        imagePath: "assets/images/app2/ic_plank.png",
        title: "Plank Exercise",
        desc: "Improve posture and stability.",
        time: "30",
        days: "3")
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: ListView.builder(
        itemBuilder: (context, index) {
          return ItemWorkout(model: models[index]);
        },
        itemCount: models.length,
      ),
    );
  }
}
