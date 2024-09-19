import 'package:flutter/material.dart';

class SORC extends StatefulWidget {
  const SORC({super.key});

  @override
  State<SORC> createState() => _SORCState();
}

class _SORCState extends State<SORC> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Sistemas e Redes",
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
              onTap: () {},
              child: Image.asset(
                'assets/images/1ano/IntroSORC.png',
                width: 270,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
