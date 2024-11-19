import 'package:flutter/material.dart';

class MessageMainWid extends StatefulWidget {
  const MessageMainWid({super.key});

  @override
  State<MessageMainWid> createState() => _MessageMainWidState();
}

class _MessageMainWidState extends State<MessageMainWid> {
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
        const Column(
          children: [
            SizedBox(
              width: 50,
              height: 150,
            ),
          ],
        ),
      ],
    );
  }
}
