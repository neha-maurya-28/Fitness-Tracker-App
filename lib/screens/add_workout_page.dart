import 'package:flutter/material.dart';
import '../models/workout.dart';

class AddWorkoutPage extends StatefulWidget {
  @override
  State<AddWorkoutPage> createState() => _AddWorkoutPageState();
}

class _AddWorkoutPageState extends State<AddWorkoutPage> {
  final _formKey = GlobalKey<FormState>();
  final _titleController = TextEditingController();
  final _durationController = TextEditingController();
  String _selectedCategory = 'Cardio';
  DateTime _selectedDate = DateTime.now();

  void _submitWorkout() {
    if (_formKey.currentState!.validate()) {
      final newWorkout = Workout(
        title: _titleController.text,
        category: _selectedCategory,
        duration: int.parse(_durationController.text),
        date: _selectedDate,
      );
      Navigator.pop(context, newWorkout);
    }
  }

  void _pickDate() async {
    final picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(2020),
      lastDate: DateTime.now(),
    );
    if (picked != null) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add Workout')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                controller: _titleController,
                decoration: InputDecoration(labelText: 'Workout Title'),
                validator: (value) => value!.isEmpty ? 'Enter a title' : null,
              ),
              TextFormField(
                controller: _durationController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: 'Duration (minutes)'),
                validator: (value) =>
                    value!.isEmpty ? 'Enter duration' : null,
              ),
              SizedBox(height: 10),
              DropdownButtonFormField<String>(
                value: _selectedCategory,
                items: ['Cardio', 'Strength', 'Yoga'].map((cat) {
                  return DropdownMenuItem(value: cat, child: Text(cat));
                }).toList(),
                onChanged: (val) {
                  setState(() {
                    _selectedCategory = val!;
                  });
                },
                decoration: InputDecoration(labelText: 'Category'),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Date: ${_selectedDate.toLocal().toString().split(' ')[0]}'),
                  TextButton(
                    onPressed: _pickDate,
                    child: Text('Choose Date'),
                  )
                ],
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _submitWorkout,
                child: Text('Save Workout'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
