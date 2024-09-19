// ignore_for_file: prefer_const_constructors, camel_case_types, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class mobileText extends StatefulWidget {
  const mobileText({super.key});

  @override
  State<mobileText> createState() => _mobileTextState();
}

class _mobileTextState extends State<mobileText> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Mobile",
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
                Navigator.pushNamed(context, 'QuizMob1');
              },
              child: Image.asset(
              'assets/images/3ano/Materias_Mobile.png',
              width: 270,
              ),
            ),
          ],
        ),
      ),
    );
  }
}