// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class AddPage extends StatefulWidget{
  @override
  _AddPageState createState() => _AddPageState();
}

class _AddPageState extends State <AddPage>{


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 50), // Spacing from top
          Center(
            child: Text(
              'Create New Task',
              style: TextStyle(
                fontSize: 30,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(height: 30), // Space between text and AddTaskCard
          
          Expanded( // This enables the scroll area to take available space
            child: Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: AddTaskCard(),
            ),
          ),
        ],
      ),
    );
  }
}

class AddTaskCard extends StatefulWidget {

  @override
  _AddTaskCardState createState() => _AddTaskCardState();
}

class _AddTaskCardState extends State<AddTaskCard> {
  String priorityValue = 'Low';
  String statusValue = 'Pending';
  TextEditingController dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
          height: MediaQuery.of(context).size.height * .7,
          width: MediaQuery.of(context).size.width * .85,
          child: SingleChildScrollView(
            child: Card(
              elevation: 10,
              shadowColor: Colors.deepPurple,
              color: Color.fromARGB(255, 92, 62, 102),
              child: Padding(
                padding: EdgeInsets.all(25),
                child: Column(
                  children: [
                    SizedBox(height:15),
                    TextField(
                      maxLines: null, // This allows the TextField to expand
                      minLines: 1,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: const Color.fromARGB(255, 255, 255, 255)),
                          borderRadius: BorderRadius.circular(20),
                          
                        ),
                        hintText: 'Task Title',
                        hintStyle: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      style: TextStyle(
                        color: const Color.fromARGB(255, 255, 255, 255), // Input text color
                        fontSize: 16, // Font size
                      ),
                    ),
                    SizedBox(height: 25),
                    TextField(
                      maxLines: null, // This allows the TextField to expand
                      minLines: 1,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: const Color.fromARGB(255, 255, 255, 255)),
                          borderRadius: BorderRadius.circular(20),
                          
                        ),
                        hintText: 'Description',
                        hintStyle: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      style: TextStyle(
                        color: const Color.fromARGB(255, 255, 255, 255), // Input text color
                        fontSize: 16, // Font size
                      ),
                    ),
                    SizedBox(height: 25),
                    
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Status',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 8), // spacing between title and dropdown
                        DropdownButton<String>(
                          isExpanded: true,
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          value: statusValue,
                          dropdownColor: Color.fromARGB(255, 54, 57, 89),
                          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                          items: <String>['Pending', 'In Progress', 'Completed']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              statusValue = newValue!;
                            });
                          },
                        ),
                      ],
                    ),
            
                    /*
                    TextField(
                      maxLines: null, // This allows the TextField to expand
                      minLines: 1,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: const Color.fromARGB(255, 255, 255, 255)),
                          borderRadius: BorderRadius.circular(20),
                          
                        ),
                        hintText: 'Status',
                        hintStyle: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      style: TextStyle(
                        color: const Color.fromARGB(255, 255, 255, 255), // Input text color
                        fontSize: 16, // Font size
                      ),
                    ),
                    */
                    SizedBox(height: 25),
            
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Priority',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 8), // spacing between title and dropdown
                        DropdownButton<String>(
                          isExpanded: true,
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          value: priorityValue,
                          dropdownColor: Color.fromARGB(255, 54, 57, 89),
                          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                          items: <String>['Low', 'Medium', 'High']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              priorityValue = newValue!;
                            });
                          },
                        ),
                      ],
                    ),
                    SizedBox(height: 25),
            
                    TextField(
                      readOnly: true,
                      onTap: () {
                        _selectDate();
                      },
                      controller: dateController,
                      maxLines: null, // This allows the TextField to expand
                      minLines: 1,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.calendar_today, color: Colors.white), // Optional icon
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: const Color.fromARGB(255, 255, 255, 255)),
                          borderRadius: BorderRadius.circular(20),
                          
                        ),
                        labelText: 'Created at',
                        hintStyle: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                        labelStyle: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                
                      ),
                      style: TextStyle(
                        color: const Color.fromARGB(255, 255, 255, 255), // Input text color
                        fontSize: 16, // Font size
                      ),
                    ),
                    SizedBox(height: 25),
                    
                    TextField(
                      readOnly: true,
                      onTap: () {
                        _selectDate();
                      },
                      controller: dateController,
                      maxLines: null, // This allows the TextField to expand
                      minLines: 1,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.calendar_today, color: Colors.white), // Optional icon
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: const Color.fromARGB(255, 255, 255, 255)),
                          borderRadius: BorderRadius.circular(20),
                          
                        ),
                        labelText: 'Deadline',
                        hintStyle: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                        labelStyle: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                
                      ),
                      style: TextStyle(
                        color: const Color.fromARGB(255, 255, 255, 255), // Input text color
                        fontSize: 16, // Font size
                      ),
                    ),
                    SizedBox(height: 25),

                    TextField(
                      maxLines: null, // This allows the TextField to expand
                      minLines: 1,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: const Color.fromARGB(255, 255, 255, 255)),
                          borderRadius: BorderRadius.circular(20),
                          
                        ),
                        
                        hintText: 'Assigned to',
                        hintStyle: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                        
                      ),
                    ),
                    SizedBox(height: 25,),
                    
                    ElevatedButton(
                      onPressed: () {
                
                
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Color.fromARGB(255, 255, 255, 255), 
                        backgroundColor: Colors.blue, // Text color
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15), 
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30), // Rounded corners
                        ),
                        elevation: 5, // Shadow effect
                      ),
                      child: Text(
                        'Submit',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold), // Text style
                      ),
                    ),
                
                    
                  ],
                  ),
              ),
            ),
          ),
        );
  }
  Future<void> _selectDate() async{
  DateTime? picked = await showDatePicker(
    context: context,
    initialDate: DateTime.now(),
    firstDate: DateTime(2000),
    lastDate: DateTime(2101),
  );
  if(picked != null){
    setState(() {
      dateController.text = picked.toString().split(" ")[0];
    });
  }
}
}

