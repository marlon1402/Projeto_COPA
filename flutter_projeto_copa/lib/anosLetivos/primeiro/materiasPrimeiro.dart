import 'package:flutter/material.dart';

class Textoprimeiro extends StatefulWidget {
  const Textoprimeiro({super.key});

  @override
  State<Textoprimeiro> createState() => _TextoprimeiroState();
}

class _TextoprimeiroState extends State<Textoprimeiro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "1° Ano Letivo",
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
                Navigator.pushNamed(context, 'LP');
              },
              child: Image.asset(
                'assets/images/1ano/LP.png',
                width: 250,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'BD');
              },
              child: Image.asset(
                'assets/images/1ano/BD.png',
                width: 250,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'Web1');
              },
              child: Image.asset(
                'assets/images/1ano/Web1.png',
                width: 250,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'SORC');
              },
              child: Image.asset(
                'assets/images/1ano/SORC.png',
                width: 250,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'Informatica');
              },
              child: Image.asset(
                'assets/images/1ano/Informatica.png',
                width: 250,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
