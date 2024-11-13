import 'package:flutter/material.dart';
import 'package:flutter_application_2/Widget/Table_widget/select_date.dart';

class Tabledata extends StatelessWidget {
  const Tabledata({super.key});

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
        Container(
          padding: const EdgeInsets.all(30),
          width: MediaQuery.of(context).size.width,
          child: SizedBox(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 570,
                        child: Table(
                          border:
                              TableBorder.all(color: Colors.blueGrey, width: 1),
                          columnWidths: const <int, TableColumnWidth>{
                            0: FlexColumnWidth(1),
                            1: FlexColumnWidth(3),
                            2: FlexColumnWidth(2),
                            3: FlexColumnWidth(2),
                            4: FlexColumnWidth(2),
                            5: FlexColumnWidth(2),
                          },
                          defaultVerticalAlignment:
                              TableCellVerticalAlignment.middle,
                          children: [
                            TableRow(
                              decoration:
                                  BoxDecoration(color: Colors.blueGrey[100]),
                              children: const <Widget>[
                                StyledTableCell(text: 'No', isHeader: true),
                                StyledTableCell(text: 'DATE', isHeader: true),
                                StyledTableCell(text: 'TIME', isHeader: true),
                                StyledTableCell(text: 'TEMP', isHeader: true),
                                StyledTableCell(text: 'POWER', isHeader: true),
                                StyledTableCell(text: 'DOOR', isHeader: true),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const Expanded(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: SizedBox(
                            width: 570,
                            child: TableExample(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Row(
                          children: [
                            Text(
                              "Start date :",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                            SizedBox(width: 10),
                            StartSelectDate(),
                          ],
                        ),
                        const Row(
                          children: [
                            Text(
                              "End date :",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                            SizedBox(width: 20),
                            EndSelectDate(),
                          ],
                        ),
                        const SizedBox(height: 10),
                        const Row(
                          children: [
                            Text(
                              "Send data to mail",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                            SizedBox(width: 20),
                            Icon(
                              Icons.mail,
                              color: Colors.white,
                              size: 30.0,
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 0),
                          child: TextFormField(
                            style: const TextStyle(color: Colors.white),
                            decoration: const InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: 'File name',
                              labelStyle: TextStyle(color: Colors.white),
                              fillColor: Colors.white,
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 0),
                          child: TextFormField(
                            style: const TextStyle(color: Colors.white),
                            decoration: const InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: 'E-mail',
                              labelStyle: TextStyle(color: Colors.white),
                              fillColor: Colors.white,
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 10),
                                minimumSize: const Size(290, 50),
                              ),
                              child: const Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    'Send',
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Icon(Icons.send),
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
            ),
          ),
        ),
      ],
    );
  }
}

class TableExample extends StatelessWidget {
  const TableExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      border: TableBorder.all(color: Colors.blueGrey, width: 1),
      columnWidths: const <int, TableColumnWidth>{
        0: FlexColumnWidth(1),
        1: FlexColumnWidth(3),
        2: FlexColumnWidth(2),
        3: FlexColumnWidth(2),
        4: FlexColumnWidth(2),
        5: FlexColumnWidth(2),
      },
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children: const <TableRow>[
        TableRow(
          children: <Widget>[
            StyledTableCell(text: '1'),
            StyledTableCell(text: '2024-10-30'),
            StyledTableCell(text: '12:00'),
            StyledTableCell(text: '25°C'),
            StyledTableCell(text: '100W'),
            StyledTableCell(text: 'Closed'),
          ],
        ),
        TableRow(
          children: <Widget>[
            StyledTableCell(text: '1'),
            StyledTableCell(text: '2024-10-30'),
            StyledTableCell(text: '12:00'),
            StyledTableCell(text: '25°C'),
            StyledTableCell(text: '100W'),
            StyledTableCell(text: 'Closed'),
          ],
        ),
        TableRow(
          children: <Widget>[
            StyledTableCell(text: '1'),
            StyledTableCell(text: '2024-10-30'),
            StyledTableCell(text: '12:00'),
            StyledTableCell(text: '25°C'),
            StyledTableCell(text: '100W'),
            StyledTableCell(text: 'Closed'),
          ],
        ),
        TableRow(
          children: <Widget>[
            StyledTableCell(text: '1'),
            StyledTableCell(text: '2024-10-30'),
            StyledTableCell(text: '12:00'),
            StyledTableCell(text: '25°C'),
            StyledTableCell(text: '100W'),
            StyledTableCell(text: 'Closed'),
          ],
        ),
        TableRow(
          children: <Widget>[
            StyledTableCell(text: '1'),
            StyledTableCell(text: '2024-10-30'),
            StyledTableCell(text: '12:00'),
            StyledTableCell(text: '25°C'),
            StyledTableCell(text: '100W'),
            StyledTableCell(text: 'Closed'),
          ],
        ),
        TableRow(
          children: <Widget>[
            StyledTableCell(text: '1'),
            StyledTableCell(text: '2024-10-30'),
            StyledTableCell(text: '12:00'),
            StyledTableCell(text: '25°C'),
            StyledTableCell(text: '100W'),
            StyledTableCell(text: 'Closed'),
          ],
        ),
        TableRow(
          children: <Widget>[
            StyledTableCell(text: '1'),
            StyledTableCell(text: '2024-10-30'),
            StyledTableCell(text: '12:00'),
            StyledTableCell(text: '25°C'),
            StyledTableCell(text: '100W'),
            StyledTableCell(text: 'Closed'),
          ],
        ),
        TableRow(
          children: <Widget>[
            StyledTableCell(text: '7'),
            StyledTableCell(text: '2024-10-30'),
            StyledTableCell(text: '12:00'),
            StyledTableCell(text: '25°C'),
            StyledTableCell(text: '100W'),
            StyledTableCell(text: 'Closed'),
          ],
        ),
        TableRow(
          children: <Widget>[
            StyledTableCell(text: '7'),
            StyledTableCell(text: '2024-10-30'),
            StyledTableCell(text: '12:00'),
            StyledTableCell(text: '25°C'),
            StyledTableCell(text: '100W'),
            StyledTableCell(text: 'Closed'),
          ],
        ),
        TableRow(
          children: <Widget>[
            StyledTableCell(text: '7'),
            StyledTableCell(text: '2024-10-30'),
            StyledTableCell(text: '12:00'),
            StyledTableCell(text: '25°C'),
            StyledTableCell(text: '100W'),
            StyledTableCell(text: 'Closed'),
          ],
        ),
        TableRow(
          children: <Widget>[
            StyledTableCell(text: '7'),
            StyledTableCell(text: '2024-10-30'),
            StyledTableCell(text: '12:00'),
            StyledTableCell(text: '25°C'),
            StyledTableCell(text: '100W'),
            StyledTableCell(text: 'Closed'),
          ],
        ),
        TableRow(
          children: <Widget>[
            StyledTableCell(text: '7'),
            StyledTableCell(text: '2024-10-30'),
            StyledTableCell(text: '12:00'),
            StyledTableCell(text: '25°C'),
            StyledTableCell(text: '100W'),
            StyledTableCell(text: 'Closed'),
          ],
        ),
        TableRow(
          children: <Widget>[
            StyledTableCell(text: '7'),
            StyledTableCell(text: '2024-10-30'),
            StyledTableCell(text: '12:00'),
            StyledTableCell(text: '25°C'),
            StyledTableCell(text: '100W'),
            StyledTableCell(text: 'Closed'),
          ],
        ),
        TableRow(
          children: <Widget>[
            StyledTableCell(text: '7'),
            StyledTableCell(text: '2024-10-30'),
            StyledTableCell(text: '12:00'),
            StyledTableCell(text: '25°C'),
            StyledTableCell(text: '100W'),
            StyledTableCell(text: 'Closed'),
          ],
        ),
        TableRow(
          children: <Widget>[
            StyledTableCell(text: '7'),
            StyledTableCell(text: '2024-10-30'),
            StyledTableCell(text: '12:00'),
            StyledTableCell(text: '25°C'),
            StyledTableCell(text: '100W'),
            StyledTableCell(text: 'Closed'),
          ],
        ),
        TableRow(
          children: <Widget>[
            StyledTableCell(text: '7'),
            StyledTableCell(text: '2024-10-30'),
            StyledTableCell(text: '12:00'),
            StyledTableCell(text: '25°C'),
            StyledTableCell(text: '100W'),
            StyledTableCell(text: 'Closed'),
          ],
        ),
        TableRow(
          children: <Widget>[
            StyledTableCell(text: '7'),
            StyledTableCell(text: '2024-10-30'),
            StyledTableCell(text: '12:00'),
            StyledTableCell(text: '25°C'),
            StyledTableCell(text: '100W'),
            StyledTableCell(text: 'Closed'),
          ],
        ),
      ],
    );
  }
}

class StyledTableCell extends StatelessWidget {
  final String text;
  final bool isHeader;

  const StyledTableCell({required this.text, this.isHeader = false, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: isHeader ? FontWeight.bold : FontWeight.normal,
          fontSize: isHeader ? 18 : 16,
          color: isHeader
              ? Colors.blueGrey[800]
              : const Color.fromARGB(221, 255, 255, 255),
        ),
      ),
    );
  }
}
