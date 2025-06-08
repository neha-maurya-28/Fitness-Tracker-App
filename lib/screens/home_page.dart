import 'package:flutter/material.dart';
import '../models/workout.dart';
import '../widgets/workout_card.dart';
import 'add_workout_page.dart';
import 'bmi_page.dart';
import 'summary_page.dart';
import '../utils/workout_storage.dart';

class HomePage extends StatefulWidget {
  final VoidCallback onToggleTheme;
  const HomePage({required this.onToggleTheme});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Workout> _workouts = [];

  @override
  void initState() {
    super.initState();
    _loadWorkouts();
  }

  Future<void> _loadWorkouts() async {
    final loaded = await WorkoutStorage.loadWorkouts();
    setState(() {
      _workouts = loaded;
    });
  }

  Future<void> _saveWorkouts() async {
    await WorkoutStorage.saveWorkouts(_workouts);
  }

  void _addWorkout(Workout workout) {
    setState(() {
      _workouts.add(workout);
    });
    _saveWorkouts();
  }

  void _navigateToAddWorkout() async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => AddWorkoutPage(),
      ),
    );
    if (result != null && result is Workout) {
      _addWorkout(result);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fitness Tracker'),
        actions: [
          IconButton(
            icon: Icon(Icons.brightness_6),
            onPressed: widget.onToggleTheme,
          ),
        ],
      ),
      body: _workouts.isEmpty
          ? Center(child: Text('No workouts added yet!'))
          : ListView.builder(
              itemCount: _workouts.length,
              itemBuilder: (context, index) {
                return WorkoutCard(
                  workout: _workouts[index],
                  onDelete: () {
                    setState(() {
                      _workouts.removeAt(index);
                    });
                    _saveWorkouts();
                  },
                );
              },
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: _navigateToAddWorkout,
        child: Icon(Icons.add),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Text('Fitness Tracker', style: TextStyle(fontSize: 24)),
            ),
            ListTile(
              leading: Icon(Icons.monitor_weight),
              title: Text('BMI Calculator'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => BmiPage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.bar_chart),
              title: Text('Summary'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => SummaryPage(workouts: _workouts)));
              },
            ),
          ],
        ),
      ),
    );
  }
}
