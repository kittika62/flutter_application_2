import 'package:flutter/material.dart';

class Ledtime extends StatelessWidget {
  const Ledtime({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(
          Icons.radio_button_on,
          size: 100.0,
          color: Colors.green,
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.only(right: 55.0),
          child: Text(
            '00:00',
            style: TextStyle(
              fontSize: 24.0,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}

class TempMaxMin extends StatelessWidget {
  const TempMaxMin({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 210,
              width: 455,
              child: Text(
                '00.00',
                style: TextStyle(
                  fontSize: 180,
                  color: Colors.black,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                print('Button Pressed');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 4, 31, 53),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                minimumSize: const Size(200, 60),
              ),
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Mute Alarm',
                    style: TextStyle(
                      fontSize: 24.0,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 10),
                  Icon(Icons.notification_important),
                ],
              ),
            ),
          ],
        ),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'MAX',
              style: TextStyle(
                fontSize: 25,
                color: Colors.black,
              ),
            ),
            Text(
              '00.00',
              style: TextStyle(
                fontSize: 25,
                color: Colors.black,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'MIN',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                  ),
                ),
                Text(
                  '00.00',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                  ),
                ),
              ],
            )
          ],
        ),
        Center(
          child: CustomPaint(
            size: const Size(50, 200),
            painter: CurvedThermometerPainter(),
          ),
        )
      ],
    );
  }
}

class IconStatus extends StatelessWidget {
  const IconStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Icon(
          Icons.power,
          size: 50,
        ),
        Icon(
          Icons.wifi_password,
          size: 50,
        ),
        Icon(
          Icons.door_back_door,
          size: 50,
        ),
        Icon(
          Icons.battery_charging_full,
          size: 50,
        ),
      ],
    );
  }
}

class CurvedThermometerPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.red
      ..style = PaintingStyle.fill;

    // Draw the bulb with a curve
    canvas.drawOval(
        Rect.fromCircle(
            center: Offset(size.width / 2, size.height - 30), radius: 30),
        paint);

    // Draw the stem with a curve
    paint.color = Colors.grey;
    final path = Path();
    path.moveTo(size.width / 2 - 10, size.height - 60);
    path.lineTo(size.width / 2 - 10, 0);
    path.quadraticBezierTo(
        size.width / 2, -30, size.width / 2 + 10, 0); // Curved top
    path.lineTo(size.width / 2 + 10, size.height - 60);
    path.close();
    canvas.drawPath(path, paint);

    // Draw the mercury
    paint.color = Colors.red;
    final mercuryHeight = (size.height - 60) * 0.5; // Example for 50% full
    canvas.drawRect(
        Rect.fromLTWH(size.width / 2 - 5, size.height - 30 - mercuryHeight, 10,
            mercuryHeight),
        paint);

    // Draw the outer frame
    paint.color = Colors.black;
    paint.style = PaintingStyle.stroke;

    // Draw the bulb's frame
    canvas.drawOval(
        Rect.fromCircle(
            center: Offset(size.width / 2, size.height - 30), radius: 30),
        paint);

    // Draw the outer frame of the stem
    final framePath = Path();
    framePath.moveTo(size.width / 2 - 12, size.height - 60);
    framePath.lineTo(size.width / 2 - 12,
        -10); // Adjust this value for the height of the frame
    framePath.quadraticBezierTo(
        size.width / 2, -50, size.width / 2 + 12, -10); // Curved top
    framePath.lineTo(size.width / 2 + 12, size.height - 60);
    framePath.close();
    canvas.drawPath(framePath, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
