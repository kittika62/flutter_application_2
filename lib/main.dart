import 'package:flutter/material.dart';
import 'package:flutter_application_2/Widget/Main_widget/object_on_main.dart';
import 'package:flutter_application_2/Widget/graph_widget/graph.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My title",
      home: DefaultTabController(
        length: 10,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              labelColor: Colors.yellow,
              unselectedLabelColor: Colors.white,
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
            backgroundColor: const Color.fromARGB(255, 35, 43, 77),
          ),
          body: const TabBarView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Ledtime(),
                  TempMaxMin(),
                  IconStatus(),
                ],
              ),
              Background(),
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
          backgroundColor: const Color.fromARGB(255, 158, 147, 218),
        ),
      ),
    );
  }
}
