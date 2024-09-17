// ignore_for_file: prefer_const_constructors

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
        title: Text("Primeiro"),
        backgroundColor: const Color.fromARGB(255, 140, 82, 255),
      ),
      backgroundColor: const Color.fromARGB(255, 25, 7, 63),
    );
  }
}
