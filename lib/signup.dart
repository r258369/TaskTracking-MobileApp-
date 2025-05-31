// ignore_for_file: camel_case_types, prefer_const_constructors, library_private_types_in_public_api, use_key_in_widget_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Sign_UP extends StatefulWidget {
  @override
  _Sign_UPState createState() => _Sign_UPState();
}

class _Sign_UPState extends State<Sign_UP> {

  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void createAccount() async {
  String email = emailController.text.trim();
  String name = nameController.text.trim();
  String password = passwordController.text.trim();

  if (email.isEmpty || name.isEmpty || password.isEmpty) {
    print('Please fill in all fields');
    return;
  }

  try {
    FirebaseAuth auth = FirebaseAuth.instance;
    UserCredential credential = await auth.createUserWithEmailAndPassword(
      email: email,
      password: password,

    );

    if (credential.user != null) {
      // Create user profile in Firestore
      await FirebaseFirestore.instance.collection('userProfiles').doc(credential.user!.uid).set({ // Corrected: Use FirebaseFirestore.instance
        'id': credential.user!.uid,
        'role': '', // Initialize with empty string or a default role
        'bio': '', // Initialize with empty string
        'profilepic': '', // Initialize with empty string or default URL
        'phoneNumber': '', // Initialize with empty string
        'location': '', // Initialize with empty string
        'accountId': credential.user!.uid, // Foreign key to the user account
      });
      print('User created and profile created for: ${credential.user!.uid}');
    }
  } catch (e) {
    print('Error creating user: $e');
  }
}



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/register.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Foreground content
          Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 70),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // Title
                    Text(
                      'Register',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 40),

                    // Email Field
                    TextField(
                      controller: emailController,
                      decoration: InputDecoration(
                        hintText: "Email",
                        filled: true,
                        fillColor: Colors.grey.shade200,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),

                    // Name Field
                    TextField(
                      controller: nameController,
                      decoration: InputDecoration(
                        hintText: "Name",
                        filled: true,
                        fillColor: Colors.grey.shade200,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),

                    // Password Field
                    TextField(
                      controller: passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Password",
                        filled: true,
                        fillColor: Colors.grey.shade200,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                    SizedBox(height: 30),

                    // Submit Button
                    ElevatedButton(
                      onPressed: () {
                        createAccount();
                        Navigator.pop(context);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                        elevation: 5,
                      ),
                      child: Text(
                        'Submit',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
