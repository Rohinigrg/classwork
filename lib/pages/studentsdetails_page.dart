
import 'package:flutter/material.dart';
import 'output_page.dart';

class StudentsdetailsPage extends StatefulWidget {
  const StudentsdetailsPage({super.key});

  @override
  State<StudentsdetailsPage> createState() =>
      _StudentsdetailsPageState();
}

class _StudentsdetailsPageState extends State<StudentsdetailsPage> {

  String firstName = '';
  String lastName = '';
  String gender = 'Male';
  String department = 'IT';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Student Details"),
      ),

      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              labelText: "First Name",
            ),
            onChanged: (value) {
              firstName = value;
            },
          ),

          TextField(
            decoration: InputDecoration(
              labelText: "Last Name",
            ),
            onChanged: (value) {
              lastName = value;
            },
          ),

          Text("Gender"),

        RadioGroup<String>(
         groupValue: gender,
           onChanged: (value) {
           setState(() {
           gender = value!;
           });
          },
           child: Row(
            children: [
            Radio<String>(
            value: "Male",
           ),
           Text("Male"),

          Radio<String>(
          value: "Female",
          ),
         Text("Female"),
        ],
        ),
          ),

          Text("Department"),

          DropdownButton(
            value: department,
            items: [
              DropdownMenuItem(
                value: "IT",
                child: Text("IT"),
              ),
              DropdownMenuItem(
                value: "Sales",
                child: Text("Sales"),
              ),
              DropdownMenuItem(
                value: "Finance",
                child: Text("Finance"),
              ),
            ],
            onChanged: (value) {
              setState(() {
                department = value!;
              });
            },
          ),

          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => OutputPage(
                    firstName: firstName,
                    lastName: lastName,
                    gender: gender,
                    department: department,
                  ),
                ),
              );
            },
            child: Text("Display Details"),
          ),
        ],
      ),
    );
  }
}
