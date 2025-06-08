import 'package:flutter/material.dart';
import '../models/workout.dart';

class WorkoutCard extends StatelessWidget {
  final Workout workout;
  final VoidCallback onDelete;

  const WorkoutCard({
    Key? key,
    required this.workout,
    required this.onDelete,
  }) : super(key: key);

  IconData getCategoryIcon(String category) {
    switch (category) {
      case 'Cardio':
        return Icons.directions_run;
      case 'Strength':
        return Icons.fitness_center;
      case 'Yoga':
        return Icons.self_improvement;
      default:
        return Icons.fitness_center;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        leading: Icon(
          getCategoryIcon(workout.category),
          size: 30,
          color: Theme.of(context).colorScheme.primary,
        ),
        title: Text(
          workout.title,
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        subtitle: Text(
          '${workout.category} • ${workout.duration} mins\n${workout.date.toLocal().toString().split(' ')[0]}',
        ),
        trailing: IconButton(
          icon: Icon(Icons.delete), 
          onPressed: onDelete,
        ),
        isThreeLine: true,
      ),
    );
  }
}
