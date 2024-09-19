// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Textoterceiro extends StatefulWidget {
  const Textoterceiro({super.key});

  @override
  State<Textoterceiro> createState() => _TextoterceiroState();
}

class _TextoterceiroState extends State<Textoterceiro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "3° Ano Letivo",
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
            Navigator.pushNamed(context, 'iniciar');
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 30,
          ),
        ),
      ),
      body: Container(
        color: const Color.fromARGB(255, 25, 7, 63),
        child: ListView(
          children: [
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'mobile');
              },
              child: Image.asset(
                'assets/images/3ano/Mobile.png',
                width: 250,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'arduino');
              },
              child: Image.asset(
                'assets/images/3ano/Arduino.png',
                width: 250,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'topicos');
              },
              child: Image.asset(
                'assets/images/3ano/TTI.png',
                width: 250,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'projeto2');
              },
              child: Image.asset(
                'assets/images/3ano/PI2.png',
                width: 250,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
