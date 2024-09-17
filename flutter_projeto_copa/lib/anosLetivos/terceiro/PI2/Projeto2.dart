// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ProjetoDoisText extends StatefulWidget {
  const ProjetoDoisText({super.key});

  @override
  State<ProjetoDoisText> createState() => _ProjetoDoisTextState();
}

class _ProjetoDoisTextState extends State<ProjetoDoisText> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Projeto Integrador II",
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
                
              },
              child: Image.asset(
              'assets/images/3ano/Materias_PI2.png',
              width: 270,
            ),
            )
          ],
        ),
      ),
    );
  }
}