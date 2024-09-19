// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Textosegundo extends StatefulWidget {
  const Textosegundo({super.key});

  @override
  State<Textosegundo> createState() => _TextosegundoState();
}

class _TextosegundoState extends State<Textosegundo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "2° Ano Letivo",
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
        child: ListView(children: [
          SizedBox(
            height: 30,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, 'inova');
            },
            child: Image.asset(
              'assets/images/2ano/inova.png',
              width: 240,
            ),
          ),
          SizedBox(
            height: 50,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, 'java');
            },
            child: Image.asset(
              'assets/images/2ano/java.png',
              width: 240,
            ),
          ),
          SizedBox(
            height: 50,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, 'desk');
            },
            child: Image.asset(
              'assets/images/2ano/desktop.png',
              width: 240,
            ),
          ),
          SizedBox(
            height: 50,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, 'web2');
            },
            child: Image.asset(
              'assets/images/2ano/web2.png',
              width: 240,
            ),
          ),
          SizedBox(
            height: 50,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, 'pi');
            },
            child: Image.asset(
              'assets/images/2ano/pi.png',
              width: 240,
            ),
          ),
          SizedBox(
            height: 30,
          ),
        ]),
      ),
    );
  }
}
