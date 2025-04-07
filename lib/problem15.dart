import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; // For formatting date and time

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Date and Time Picker App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const DateTimePickerScreen(),
    );
  }
}

class DateTimePickerScreen extends StatefulWidget {
  const DateTimePickerScreen({super.key});

  @override
  State<DateTimePickerScreen> createState() => _DateTimePickerScreenState();
}

class _DateTimePickerScreenState extends State<DateTimePickerScreen> {
  DateTime? _selectedDate;
  TimeOfDay? _selectedTime;

  // Function to show the date picker
  Future<void> _pickDate(BuildContext context) async {
    DateTime currentDate = DateTime.now();
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: currentDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );

    if (pickedDate != null && pickedDate != _selectedDate) {
      setState(() {
        _selectedDate = pickedDate;
      });
    }
  }

  // Function to show the time picker
  Future<void> _pickTime(BuildContext context) async {
    final TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    if (pickedTime != null && pickedTime != _selectedTime) {
      setState(() {
        _selectedTime = pickedTime;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    String formattedDate = _selectedDate != null
        ? DateFormat('yyyy-MM-dd').format(_selectedDate!)
        : 'No date selected';

    String formattedTime = _selectedTime != null
        ? _selectedTime!.format(context)
        : 'No time selected';

    return Scaffold(
      appBar: AppBar(
        title: const Text('Date and Time Picker'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => _pickDate(context),
              child: const Text('Pick a Date'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _pickTime(context),
              child: const Text('Pick a Time'),
            ),
            const SizedBox(height: 40),
            Text(
              'Selected Date: $formattedDate',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 10),
            Text(
              'Selected Time: $formattedTime',
              style: const TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
