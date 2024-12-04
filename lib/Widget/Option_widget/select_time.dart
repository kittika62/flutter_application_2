import 'package:flutter/material.dart';

class SelectTimesend extends StatefulWidget {
  const SelectTimesend({super.key});

  @override
  State<SelectTimesend> createState() => _SelectTimesendState();
}

class _SelectTimesendState extends State<SelectTimesend> {
  TimeOfDay _timeOfDay = TimeOfDay.now();
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        _selectTime();
      },
      child: Padding(
        padding: const EdgeInsets.all(1),
        child: Row(
          children: [
            Text(
              '${_timeOfDay.hour.toString().padLeft(2, '0')}:${_timeOfDay.minute.toString().padLeft(2, '0')}',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
            const SizedBox(width: 5),
            const Icon(Icons.timelapse),
          ],
        ),
      ),
    );
  }

  Future<void> _selectTime() async {
    TimeOfDay? picked = await showTimePicker(
      initialTime: _timeOfDay,
      context: context,
    );
    if (picked != null) {
      setState(() {
        _timeOfDay = picked;
      });
    }
  }
}
