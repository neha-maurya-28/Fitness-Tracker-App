import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/workout.dart';

class WorkoutStorage {
  static const _key = 'workouts';

  static Future<void> saveWorkouts(List<Workout> workouts) async {
    final prefs = await SharedPreferences.getInstance();
    final jsonList = workouts.map((w) => w.toJson()).toList();
    prefs.setString(_key, jsonEncode(jsonList));
  }

  static Future<List<Workout>> loadWorkouts() async {
    final prefs = await SharedPreferences.getInstance();
    final jsonString = prefs.getString(_key);
    if (jsonString == null) return [];
    final List<dynamic> jsonList = jsonDecode(jsonString);
    return jsonList.map((json) => Workout.fromJson(json)).toList();
  }
}