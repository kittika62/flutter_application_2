import 'package:flutter/material.dart';

class SimMobileNet extends StatefulWidget {
  const SimMobileNet({super.key});

  @override
  State<SimMobileNet> createState() => _SimMobileNetState();
}

class _SimMobileNetState extends State<SimMobileNet> {
  int _value = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/background.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Center(
          // height: MediaQuery.of(context).size.height * 1,
          // padding: const EdgeInsets.all(20),
          // margin: const EdgeInsets.all(20),
          // width: MediaQuery.of(context).size.width * 0.5,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Mobile network',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 30.0),
                        Row(
                          children: [
                            Transform.scale(
                              scale: 1.5,
                              child: Radio(
                                value: 1,
                                groupValue: _value,
                                onChanged: (value) {
                                  setState(() {
                                    _value = value!;
                                  });
                                },
                              ),
                            ),
                            const SizedBox(width: 5.0),
                            const Text(
                              "Ais",
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Row(
                          children: [
                            Transform.scale(
                              scale: 1.5,
                              child: Radio(
                                value: 2,
                                groupValue: _value,
                                onChanged: (value) {
                                  setState(() {
                                    _value = value!;
                                  });
                                },
                              ),
                            ),
                            const SizedBox(width: 5.0),
                            const Text(
                              "True",
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Row(
                          children: [
                            Transform.scale(
                              scale: 1.5,
                              child: Radio(
                                value: 3,
                                groupValue: _value,
                                onChanged: (value) {
                                  setState(() {
                                    _value = value!;
                                  });
                                },
                              ),
                            ),
                            const SizedBox(width: 5.0),
                            const Text(
                              "Dtac",
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20.0),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            minimumSize: const Size(150, 50),
                          ),
                          child: const Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Save',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 100.0),
                    Flexible(
                      child: Column(
                        children: [
                          const Text(
                            'Send data',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 30.0),
                          const SizedBox(
                            height: 50,
                            width: 350,
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Enter your number',
                                labelText: 'Number 1',
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                          const SizedBox(height: 15.0),
                          const SizedBox(
                            height: 50,
                            width: 350,
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Enter your number',
                                labelText: 'Number 2',
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                          const SizedBox(height: 15.0),
                          const SizedBox(
                            height: 50,
                            width: 350,
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Enter your number',
                                labelText: 'Number 3',
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                          const SizedBox(height: 20.0),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
                              minimumSize: const Size(150, 50),
                            ),
                            child: const Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  'Save',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
