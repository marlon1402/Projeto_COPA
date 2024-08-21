// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

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
            fontFamily: 'Inter',
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),
        ),
        backgroundColor: Color.fromARGB(255, 140, 82, 255),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          }, 
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 30,
          )
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Color.fromARGB(255, 25, 7, 63),
        child: Stack(
          children: [
            Center(
              child: Padding(
                padding: EdgeInsets.only(
                  top: 80,
                  bottom: 20,
                  left: 25,
                  right: 25,
                ),
                child: Container(
                  padding: EdgeInsets.all(20),
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 140, 82, 255),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  children: [
                    Positioned(
                      top: 120,
                      left: 0,
                      right: 0,
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Text(
                      'TEXTO GIGANTESCO PARA TESTES DE TAMANHO E SE O PADDING ESTA REALMENTE BOM, POR ISSO ELE É GRANDE DESSE JEITO, MAS NÃO SEI POR QUE EU ESCREVI ELE EM CAPSLOCK MAS EU JA COMECEI E NÃO QUERO TROCAR.',
                      style: TextStyle(
                      color: Colors.white, // Cor do texto
                      fontSize: 20, // Tamanho do texto
                      fontWeight: FontWeight.bold, // Peso do texto
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ),
          ],
        ),
      ),
    );
  }
}