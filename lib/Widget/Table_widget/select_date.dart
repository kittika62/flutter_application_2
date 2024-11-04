import 'package:flutter/material.dart';

class StartSelectDate extends StatefulWidget {
  const StartSelectDate({super.key});

  @override
  _StartSelectDate createState() {
    return _StartSelectDate();
  }
}

class _StartSelectDate extends State<StartSelectDate> {
  DateTime selectDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "${selectDate.year} - ${selectDate.month} - ${selectDate.day}",
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
        MaterialButton(
          onPressed: () async {
            final DateTime? dateTime = await showDatePicker(
              context: context,
              initialDate: selectDate,
              firstDate: DateTime(2000),
              lastDate: DateTime(3000),
            );
            if (dateTime != null) {
              setState(() {
                selectDate = dateTime;
              });
            }
          },
          color: const Color.fromRGBO(33, 150, 243, 1),
          child: const Padding(
            padding: EdgeInsets.all(1.0),
            child: Row(
              children: [
                Text(
                  'Select_Date',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                SizedBox(width: 5),
                Icon(Icons.calendar_month),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class EndSelectDate extends StatefulWidget {
  const EndSelectDate({super.key});

  @override
  _EndSelectDate createState() {
    return _EndSelectDate();
  }
}

class _EndSelectDate extends State<EndSelectDate> {
  DateTime selectDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "${selectDate.year} - ${selectDate.month} - ${selectDate.day}",
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
        MaterialButton(
          onPressed: () async {
            final DateTime? dateTime = await showDatePicker(
              context: context,
              initialDate: selectDate,
              firstDate: DateTime(2000),
              lastDate: DateTime(3000),
            );
            if (dateTime != null) {
              setState(() {
                selectDate = dateTime;
              });
            }
          },
          color: const Color.fromRGBO(33, 150, 243, 1),
          child: const Padding(
            padding: EdgeInsets.all(1.0),
            child: Row(
              children: [
                Text(
                  'Select_Date',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                SizedBox(width: 5),
                Icon(Icons.calendar_month),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
