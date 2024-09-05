// ignore_for_file: prefer_const_constructors

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
        title: Text("Terceiro"),
        backgroundColor: const Color.fromARGB(255, 140, 82, 255),
      ),
    );
  }
}