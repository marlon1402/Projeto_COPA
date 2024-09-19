// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';

class arduinoText extends StatefulWidget {
  const arduinoText({super.key});

  @override
  State<arduinoText> createState() => _arduinoTextState();
}

class _arduinoTextState extends State<arduinoText> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Arduino",
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Inter',
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 140, 82, 255),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 30,
          ),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 25, 7, 63),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'QuizArd1');
              },
              child: Image.asset(
              'assets/images/3ano/Materias_Arduino.png',
              width: 270,
            )
            ),
          ],
        ),
      ),
    );

  }
}