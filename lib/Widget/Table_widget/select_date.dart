import 'package:flutter/material.dart';

class SelectDateStart extends StatelessWidget {
  const SelectDateStart({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MaterialButton(
          onPressed: () {},
          color: Colors.blue,
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

class SelectDateEnd extends StatelessWidget {
  const SelectDateEnd({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MaterialButton(
          onPressed: () {},
          color: Colors.blue,
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
