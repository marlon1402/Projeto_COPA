// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TopicosText extends StatefulWidget {
  const TopicosText({super.key});

  @override
  State<TopicosText> createState() => _TopicosTextState();
}

class _TopicosTextState extends State<TopicosText> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Tópicos em Tecnologia da Informação",
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
              'assets/images/3ano/Materias_TTI.png',
              width: 270,
            ),
            )
          ],
        ),
      ),
    );
  }
}