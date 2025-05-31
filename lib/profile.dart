// ignore_for_file: override_on_non_overriding_member, prefer_const_constructors, library_private_types_in_public_api

import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(right: 15, left: 15),
        child: SingleChildScrollView(
          child: Column(
            children: const [
              SizedBox(
                height: 70,
              ),
              Center(
                child: Text(
                  'Profile',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),

                ),
              ),
              SizedBox(
                height: 50,
              ),
              CircleAvatar(
                backgroundColor: Color.fromARGB(255, 92, 62, 102),
                radius: 50,
                child: Icon(
                  Icons.person,
                  size: 50,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Card(
                color: Color.fromARGB(255, 92, 62, 102),
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.person, color: Colors.white),
                      SizedBox(width: 10),
                      Text(
                        'Name',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                     
                      Expanded(
                        child: Text(
                          'John Doe',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.end,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
          
              SizedBox(
                height: 20,
              ),
              Card(
                color: Color.fromARGB(255, 92, 62, 102),
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.mail, color: Colors.white),
                      SizedBox(width: 10),
                      Text(
                        'Email',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                      
                      Expanded(
                        child: Text(
                          'JohnDoe@gmail.com',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.end,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
          
              SizedBox(
                height: 20,
              ),
              Card(
                color: Color.fromARGB(255, 92, 62, 102),
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.badge_rounded, color: Colors.white),
                      SizedBox(width: 10),
                      Text(
                        'Role',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                      
                      Expanded(
                        child: Text(
                          'Team Member',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.end,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
          
              SizedBox(
                height: 20,
              ),
              Card(
                color: Color.fromARGB(255, 92, 62, 102),
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.person_2_outlined, color: Colors.white),
                      SizedBox(width: 10),
                      Text(
                        'Bio',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                      
                      SizedBox(width: 110),
                      Expanded(
                        child: Text(
                          'Web Developer with a passion for creating beautiful and functional user interfaces.',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
          
              SizedBox(
                height: 20,
              ),
              Card(
                color: Color.fromARGB(255, 92, 62, 102),
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.location_city_rounded, color: Colors.white),
                      SizedBox(width: 10),
                      Text(
                        'Location',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                      
                      Expanded(
                        child: Text(
                          '12/5, New York, USA',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.end,
                        ),
                        
                      ),
                    ],
                  ),
                ),
              ),
          
              SizedBox(
                height: 20,
              ),
              Card(
                color: Color.fromARGB(255, 92, 62, 102),
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.phone_android_rounded, color: Colors.white),
                      SizedBox(width: 10),
                      Text(
                        'Phone Number',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          '+1 234 567 890',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.end,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 50,),
            ],
          ),
        ),
      ),
    );
  }
}
