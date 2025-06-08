import 'package:flutter/material.dart';
import 'dart:math';

class BmiPage extends StatefulWidget {
  @override
  State<BmiPage> createState() => _BmiPageState();
}

class _BmiPageState extends State<BmiPage> {
  final _weightController = TextEditingController();
  final _heightController = TextEditingController();

  double? _bmi;
  String _status = '';

  void _calculateBMI() {
    final double? weight = double.tryParse(_weightController.text);
    final double? height = double.tryParse(_heightController.text);

    if (weight == null || height == null || height == 0) {
      setState(() {
        _bmi = null;
        _status = 'Invalid input';
      });
      return;
    }

    final heightInMeters = height / 100;
    final bmi = weight / pow(heightInMeters, 2);

    String status;
    if (bmi < 18.5) {
      status = 'Underweight';
    } else if (bmi < 25) {
      status = 'Normal';
    } else if (bmi < 30) {
      status = 'Overweight';
    } else {
      status = 'Obese';
    }

    setState(() {
      _bmi = bmi;
      _status = status;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BMI Calculator')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _weightController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Weight (kg)',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              controller: _heightController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Height (cm)',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _calculateBMI,
              child: Text('Calculate BMI'),
            ),
            SizedBox(height: 20),
            if (_bmi != null)
              Text(
                'Your BMI is ${_bmi!.toStringAsFixed(2)}\nStatus: $_status',
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.center,
              ),
          ],
        ),
      ),
    );
  }
}
