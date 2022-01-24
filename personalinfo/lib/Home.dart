// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My card ',
      home: Scaffold(
        backgroundColor: Colors.amberAccent,
        appBar: AppBar(
          backgroundColor: Colors.amberAccent.shade100,
          title: Center(child: Text('Personal Info')),
        ),
        body: Padding(
          padding: EdgeInsets.all(90),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('images/mk.jpeg'),
                  radius: 70,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  '  Mo Omar',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),

              Text(
                'Full Name ',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Mohamed Omar Hassan',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              //Row EMAIL
              Row(
                children: [
                  Icon(Icons.email_sharp),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Mohamed69.student@simad.edu.so',
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 16,
              ),
              //Row Phone
              Row(
                children: [
                  Icon(
                    Icons.mobile_friendly,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    '0615314730',
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
              SizedBox(
                height: 16,
              ),
              //Row Address
              Row(
                children: [
                  Icon(Icons.location_city),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Waaberi',
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
