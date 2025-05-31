// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        
      backgroundColor: Color.fromARGB(255, 40, 43, 73),
      body: SingleChildScrollView(

        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
        
              SizedBox(height: 60),
              Center(
                child: Text(
                  'Task 1',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 40),
        
              Card(
                color: Color.fromARGB(255, 54, 57, 89),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Text(
                    'Description: This is a detailed description of the task. It includes all the necessary information and requirements to complete the task successfully.',
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
        
              Card(
                color: Color.fromARGB(255, 54, 57, 89),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.calendar_month_outlined, color: Color.fromARGB(255, 255, 255, 255)),
                            SizedBox(width: 8),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Created At ', 
                                style: 
                                  TextStyle(fontSize: 15,
                                    color: Color.fromARGB(255, 255, 255, 255),
                  
                                  ),
                                ),
                                Text('11-10-2025', 
                                style: 
                                  TextStyle(fontSize: 18,
                                    color: Color.fromARGB(255, 255, 255, 255),
                  
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                ),
              ),
                SizedBox(height: 20),
        
                Card(
                  color: Color.fromARGB(255, 54, 57, 89),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Color.fromARGB(255, 255, 0, 0),
                              child: Icon(
                                Icons.priority_high, 
                                color: Color.fromARGB(255, 255, 255, 255)
                                
                              ),
                            ),
                            SizedBox(width: 8),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Priority ', 
                                style: 
                                  TextStyle(fontSize: 15,
                                    color: Color.fromARGB(255, 255, 255, 255),
                    
                                  ),
                                ),
                                Text('High', 
                                style: 
                                  TextStyle(fontSize: 18,
                                    color: Color.fromARGB(255, 255, 255, 255),
                    
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
        
                SizedBox(height: 20),
        
                Card(
                  color: Color.fromARGB(255, 54, 57, 89),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Color.fromARGB(255, 1, 127, 26),
                              child: Icon(
                                Icons.check_circle, 
                                color: Color.fromARGB(255, 255, 255, 255)
                                
                              ),
                            ),
                            SizedBox(width: 8),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Status ', 
                                style: 
                                  TextStyle(fontSize: 15,
                                    color: Color.fromARGB(255, 255, 255, 255),
                    
                                  ),
                                ),
                                Text('Pending', 
                                style: 
                                  TextStyle(fontSize: 18,
                                    color: Color.fromARGB(255, 255, 255, 255),
                    
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              SizedBox(height: 20),
        
              Card(
                color: Color.fromARGB(255, 54, 57, 89),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.calendar_month_outlined, color: Color.fromARGB(255, 255, 255, 255)),
                            SizedBox(width: 8),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Deadline ', 
                                style: 
                                  TextStyle(fontSize: 15,
                                    color: Color.fromARGB(255, 255, 255, 255),
                  
                                  ),
                                ),
                                Text('11-10-2025', 
                                style: 
                                  TextStyle(fontSize: 18,
                                    color: Color.fromARGB(255, 255, 255, 255),
                  
                                  ),
                                ),
                              ],
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
    );
  }
}
