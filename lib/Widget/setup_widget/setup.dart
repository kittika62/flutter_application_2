import 'package:flutter/material.dart';

class SetupPage extends StatefulWidget {
  const SetupPage({super.key});
  @override
  State<SetupPage> createState() => _SetupPageState();
}

class _SetupPageState extends State<SetupPage> {
  int _value = 3;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.all(20),
          width: MediaQuery.of(context).size.width * 0.4,
          decoration: BoxDecoration(
              color: const Color.fromARGB(185, 34, 51, 59),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: Colors.blueGrey,
                width: 1,
              ),
              boxShadow: [
                BoxShadow(
                    color:
                        const Color.fromARGB(255, 59, 59, 75).withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 2,
                    offset: const Offset(0, 3))
              ]),
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Record interval',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Radio(
                      value: 1,
                      groupValue: _value,
                      onChanged: (value) {
                        setState(() {
                          _value = value!;
                        });
                      },
                    ),
                    const SizedBox(width: 5.0),
                    const Text(
                      "5 minute",
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                    const SizedBox(width: 55),
                    Radio(
                      value: 4,
                      groupValue: _value,
                      onChanged: (value) {
                        setState(() {
                          _value = value!;
                        });
                      },
                    ),
                    const SizedBox(width: 5.0),
                    const Text(
                      "1 hour",
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Radio(
                      value: 2,
                      groupValue: _value,
                      onChanged: (value) {
                        setState(() {
                          _value = value!;
                        });
                      },
                    ),
                    const SizedBox(width: 5.0),
                    const Text(
                      "15 minute",
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                    const SizedBox(width: 40),
                    Radio(
                      value: 5,
                      groupValue: _value,
                      onChanged: (value) {
                        setState(() {
                          _value = value!;
                        });
                      },
                    ),
                    const SizedBox(width: 5.0),
                    const Text(
                      "2 hour",
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Radio(
                      value: 3,
                      groupValue: _value,
                      onChanged: (value) {
                        setState(() {
                          _value = value!;
                        });
                      },
                    ),
                    const SizedBox(width: 5.0),
                    const Text(
                      "30 minute",
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                    const SizedBox(width: 40),
                    Radio(
                      value: 6,
                      groupValue: _value,
                      onChanged: (value) {
                        setState(() {
                          _value = value!;
                        });
                      },
                    ),
                    const SizedBox(width: 5.0),
                    const Text(
                      "4 hour",
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    minimumSize: const Size(200, 50),
                  ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Save',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 10),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class Alarm extends StatefulWidget {
  const Alarm({super.key});

  @override
  State<Alarm> createState() => _AlarmState();
}

class _AlarmState extends State<Alarm> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.all(20),
          width: MediaQuery.of(context).size.width * 0.5,
          decoration: BoxDecoration(
              color: const Color.fromARGB(185, 34, 51, 59),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: Colors.blueGrey,
                width: 1,
              ),
              boxShadow: [
                BoxShadow(
                    color:
                        const Color.fromARGB(255, 59, 59, 75).withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 2,
                    offset: const Offset(0, 3))
              ]),
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Temp Alarm',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Row(
                  children: [
                    const Text(
                      'Over :',
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 0),
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    minimumSize: const Size(200, 50),
                  ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Save',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 10),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
