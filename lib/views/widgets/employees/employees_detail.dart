import 'package:flutter/material.dart';

class EmployeesDetail extends StatefulWidget {
  const EmployeesDetail({super.key});

  @override
  State<EmployeesDetail> createState() => _EmployeesDetailState();
}

class _EmployeesDetailState extends State<EmployeesDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      appBar: AppBar(
        toolbarHeight: 90,
        backgroundColor: Colors.deepPurple[200],
        title: const Text(
          "Employees Detail",
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: const Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 50,
                ),
              ],
            ),
            SizedBox(height: 25),
            Text(
              "Name: ",
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
                height: 2,
              ),
            ),
            Text(
              "Age: ",
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
                height: 2,
              ),
            ),
            Text(
              "Postion: ",
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
                height: 2,
              ),
            ),
            Text(
              "Skills: ",
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
                height: 2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
