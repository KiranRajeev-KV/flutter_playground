import 'dart:ui';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // dart logic goes here
  void onPressed() {
    // ignore: avoid_print
    print("pressed");
  }

  @override
  Widget build(BuildContext context) {
    // call functions if needed
    
    return MaterialApp(
        scrollBehavior: const MaterialScrollBehavior().copyWith(
        dragDevices: {PointerDeviceKind.mouse},
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.purple[200],
        appBar: AppBar(
          title: const Text(
            "Flutter Exam Prep",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.normal,
              letterSpacing: 1,
            ),
          ),
          leading: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
          backgroundColor: Colors.deepPurple[700],
          actions: [
            Container(
              margin: const EdgeInsets.only(right: 5),
              child: IconButton(
                onPressed: onPressed,
                icon: const Icon(
                  Icons.more_vert,
                  color: Colors.white,
                ),
                padding: const EdgeInsets.symmetric(horizontal: 10),
              ),
            ),
          ],
        ),
        body: ListView(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(horizontal: 20),
          children: [
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
          color: Colors.deepPurple[100],
          borderRadius: BorderRadius.circular(25),
              ),
            ),
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
          color: Colors.deepPurple[300],
          borderRadius: BorderRadius.circular(25),
              ),
            ),
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
          color: Colors.deepPurple[500],
          borderRadius: BorderRadius.circular(25),
              ),
            ),
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
          color: Colors.deepPurple[700],
          borderRadius: BorderRadius.circular(25),
              ),
            ),
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
          color: Colors.deepPurple[900],
          borderRadius: BorderRadius.circular(25),
              ),
            ),
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
          color: Colors.purple[900],
          borderRadius: BorderRadius.circular(25),
              ),
            )
          ],
        ),
      ),
    );
  }
}
