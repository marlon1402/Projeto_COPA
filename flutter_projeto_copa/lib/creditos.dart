// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class creditos extends StatefulWidget {
  const creditos({super.key});

  @override
  State<creditos> createState() => _creditosState();
}

class _creditosState extends State<creditos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Créditos",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),
        ),
        backgroundColor: Color.fromARGB(255, 140, 82, 255),
      ),
    );
  }
}