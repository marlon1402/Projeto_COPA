// ignore_for_file: prefer_interpolation_to_compose_strings, prefer_const_constructors, prefer_adjacent_string_concatenation

import 'package:flutter/material.dart';

class Quizjava2 extends StatefulWidget {
  const Quizjava2({super.key});

  @override
  State<Quizjava2> createState() => _Quizjava2State();
}

class _Quizjava2State extends State<Quizjava2> {
  String textoErrado = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 25, 7, 63),
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.all(30),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              width: double.infinity,
              height: double.infinity,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(height: 10,),
                      Text(
                        "Meus Parabéns! O que acontece se o numero não for par?",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Inter',
                          fontSize: 16
                        ),
                      ),
                      SizedBox(height: 40,),
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black,
                        ),
                        child: Text(
                        " if (num % 2 == 0) {\n" +
                        "    System.out.println('O número é par.');\n" +
                        "} else {\n" +
                        "    System.out.println('0');\n" +
                        "}",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Inter',
                          fontSize: 20
                        ),
                      ),
                      ),
                      SizedBox(height: 50,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 200,
                            child: ElevatedButton(
                              onPressed: () {
                                mostraTexto("Ops! Resposta errada.");
                              },
                              child: Text(
                                "'O numero é par.'",
                                style: TextStyle(color: Colors.white, fontSize: 16, fontFamily: 'Inter',),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color.fromARGB(255, 140, 82, 255),
                                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            width: 200,
                            child: ElevatedButton(
                              onPressed: () {
                                mostraTexto("");
                                Navigator.pushNamed(context, 'textoSegundo');
                              },
                              child: Text(
                                "Mostra 0",
                                style: TextStyle(color: Colors.white, fontSize: 16, fontFamily: 'Inter',),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color.fromARGB(255, 140, 82, 255),
                                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 200,
                            child: ElevatedButton(
                              onPressed: () {
                                mostraTexto("Ops! Resposta errada.");
                              },
                              child: Text(
                                "'O numero é impar.'",
                                style: TextStyle(color: Colors.white, fontSize: 16, fontFamily: 'Inter',),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color.fromARGB(255, 140, 82, 255),
                                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            width: 200,
                            child: ElevatedButton(
                              onPressed: () {
                                mostraTexto("Ops! Resposta errada.");
                              },
                              child: Text(
                                "Mostra 1",
                                style: TextStyle(color: Colors.white, fontSize: 16, fontFamily: 'Inter',),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color.fromARGB(255, 140, 82, 255),
                                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Text(
                        textoErrado,
                        style: TextStyle(
                          fontFamily: 'Inter',
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: 16
                        ),
                      )
                    ],
                  ),
                ),
              )
            ),
          ),
        ],
      ),
    );
  }

  mostraTexto(texto) {
    textoErrado = texto;
    setState(() {
      
    });
  }
}