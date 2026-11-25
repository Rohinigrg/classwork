
import 'package:flutter/material.dart';

class OutputPage extends StatelessWidget {
  final String firstName;
  final String lastName;
  final String gender;
  final String department;

  const OutputPage({
    super.key,
    required this.firstName,
    required this.lastName,
    required this.gender,
    required this.department,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Output Page'),
      ),

      body: Column(
        children: [
          Text('First Name: $firstName'),
          Text('Last Name: $lastName'),
          Text('Gender: $gender'),
          Text('Department: $department'),

          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Back'),
          ),
        ],
      ),
    );
  }
}
