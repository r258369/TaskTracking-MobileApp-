// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, unused_local_variable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animations/animations.dart';
import 'dart:math';
import 'details.dart';

class HOMEPAGE extends StatefulWidget {
  @override
  _HOMEPAGEState createState() => _HOMEPAGEState();
}

class _HOMEPAGEState extends State<HOMEPAGE> {
  final Random random = Random();
  final ScrollController _scrollController = ScrollController(); // 🔹 Scroll controller

  final List<Color> cardColors = [
    Color(0xFFE3F2FD), // Light Blue
    Color(0xFFFFF9C4), // Light Yellow
    Color(0xFFE1BEE7), // Light Purple
    Color(0xFFC8E6C9), // Light Green
    Color(0xFFFFCDD2), // Light Red/Pink
    Color(0xFFD7CCC8), // Warm Gray
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        controller: _scrollController, // 🔹 Attach controller here
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Top user info
            Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.08,
                left: 16,
                right: 16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.wc, color: Color.fromARGB(255, 157, 155, 155)),
                      SizedBox(width: 8),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('USER', style: TextStyle(fontSize: 20)),
                          Text('Email', style: TextStyle(fontSize: 16)),
                        ],
                      ),
                    ],
                  ),
                  CircleAvatar(
                    backgroundColor: const Color.fromARGB(60, 0, 0, 0),
                    child: Icon(CupertinoIcons.person, color: Colors.black),
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),

            // Horizontal Cards
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    cardWidget('This is card 1'),
                    SizedBox(width: 16),
                    cardWidget('This is card 2'),
                  ],
                ),
              ),
            ),

            SizedBox(height: 30),

            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                'Task List',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 20),

            // Vertical Cards
            SizedBox(
              height: 500,
              child: ListView.builder(
                physics: AlwaysScrollableScrollPhysics(),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(10),
                    child: taskList(
                      'This is card ${index + 3}',
                      'Status: Open',
                      'Deadline: 2025-05-${(10 + index) % 30}',
                    ),
                  );
                },
              ),
            ),

            SizedBox(height: 15),

            // Scrollable Table Section
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: SizedBox(
                  width: 1200,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Table(
                      border: TableBorder.all(color: Colors.black, width: 1),
                      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                      columnWidths: const {
                        0: FixedColumnWidth(150),
                        1: FixedColumnWidth(100),
                        2: FixedColumnWidth(120),
                        3: FixedColumnWidth(200),
                        4: FixedColumnWidth(80),
                        5: FixedColumnWidth(120),
                        6: FixedColumnWidth(120),
                      },
                      children: [
                        TableRow(
                          decoration: BoxDecoration(color: Colors.grey[300]),
                          children: [
                            tableHeader('Task Title'),
                            tableHeader('Status'),
                            tableHeader('Deadline'),
                            tableHeader('Description'),
                            tableHeader('Priority'),
                            tableHeader('Created At'),
                            tableHeader('Deadline'),
                          ],
                        ),
                        for (int i = 1; i <= 20; i++)
                          TableRow(
                            children: [
                              tableCell('Task $i'),
                              tableCell(i % 2 == 0 ? 'Open' : 'Closed'),
                              tableCell('2025-05-${(10 + i) % 30}'),
                              tableCell('Description of task $i'),
                              tableCell(i % 3 == 0
                                  ? 'Low'
                                  : i % 3 == 1
                                      ? 'Medium'
                                      : 'High'),
                              tableCell('2025-05-18'),
                              tableCell('2025-05-25'),
                            ],
                          ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),

      // 🔹 Floating Button
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _scrollController.animateTo(
            _scrollController.position.maxScrollExtent,
            duration: Duration(milliseconds: 500),
            curve: Curves.easeOut,
          );
        },
        backgroundColor: Colors.deepPurple,
        child: Icon(Icons.arrow_downward),
      ),
    );
  }

  // Card widget
  Widget cardWidget(String task) {
    return SizedBox(
      height: 150,
      width: 250,
      child: Card(
        elevation: 10,
        shadowColor: Colors.deepPurple,
        child: Padding(
          padding: EdgeInsets.all(16),
        ),
      ),
    );
  }

  // Vertical task card widget
  Widget taskList(String task, String status, String deadline) {
    final Color randomColor = cardColors[random.nextInt(cardColors.length)];
    return SizedBox(
      height: 130,
      width: 250,
      child: Card(
        color: Color.fromARGB(255, 92, 62, 102),
        elevation: 10,
        shadowColor: Colors.deepPurple,
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Row(
            children: [
              // Left side
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(task,
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
                    SizedBox(height: 5),
                    Text(status,
                        style: TextStyle(fontSize: 16, color: Colors.grey)),
                    SizedBox(height: 5),
                    Text(deadline,
                        style: TextStyle(fontSize: 16, color: Colors.grey)),
                  ],
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(context, PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) => Details(),
                    transitionsBuilder: (context, animation, secondaryAnimation, child) {
                      return SharedAxisTransition(
                        animation: animation,
                        secondaryAnimation: secondaryAnimation,
                        transitionType: SharedAxisTransitionType.horizontal,
                        child: child,
                      );
                    },
                  ));
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                icon: Icon(Icons.info_outline),
                label: Text("Details"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Table header cell
  Widget tableHeader(String text) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Text(
        text,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }

  // Table content cell
  Widget tableCell(String text) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Text(text),
    );
  }
}
