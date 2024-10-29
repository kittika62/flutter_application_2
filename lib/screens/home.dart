import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          color: const Color.fromARGB(255, 75, 90, 142),
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          child: const Text(
            "Nadear84",
            style: TextStyle(fontSize: 30, letterSpacing: 3),
          ),
        ),
        Container(
          color: const Color.fromARGB(255, 75, 90, 142),
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          child: const Text(
            "Nadear84",
            style: TextStyle(fontSize: 30, letterSpacing: 3),
          ),
        ),
        Container(
          color: const Color.fromARGB(255, 75, 90, 142),
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          child: const Text(
            "Nadear84",
            style: TextStyle(fontSize: 30, letterSpacing: 3),
          ),
        ),
      ],
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 10, // จำนวนแท็บ
      child: Padding(
        padding: const EdgeInsets.all(0),
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              isScrollable: false, // ทำให้สามารถเลื่อนแท็บได้ถ้ามีจำนวนมาก
              tabs: [
                Tab(text: 'MAIN'),
                Tab(text: 'GRAPH'),
                Tab(text: 'TABLE'),
                Tab(text: 'SETUP'),
                Tab(text: 'MESSAGE'),
                Tab(text: 'SIM'),
                Tab(text: 'AUTO'),
                Tab(text: 'OPTION'),
                Tab(text: 'ADJUST'),
                Tab(text: 'EXIT'),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              Center(child: Text('Main Tab')),
              Center(child: Text('Graph Tab')),
              Center(child: Text('Table Tab')),
              Center(child: Text('Setup Tab')),
              Center(child: Text('Message Tab')),
              Center(child: Text('Sim Tab')),
              Center(child: Text('Auto Tab')),
              Center(child: Text('Option Tab')),
              Center(child: Text('Adjust Tab')),
              Center(child: Text('Exit Tab')),
            ],
          ),
        ),
      ),
    );
  }
}
