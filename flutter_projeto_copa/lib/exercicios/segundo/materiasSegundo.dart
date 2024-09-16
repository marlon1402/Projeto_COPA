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
        title: Text("Segundo"),
        backgroundColor: const Color.fromARGB(255, 140, 82, 255),
      ),
    );
  }
}