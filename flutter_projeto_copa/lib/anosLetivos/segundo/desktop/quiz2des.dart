// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';

class Myquiz2 extends StatefulWidget {
  const Myquiz2({super.key});

  @override
  State<Myquiz2> createState() => _Myquiz2State();
}

class _Myquiz2State extends State<Myquiz2> {

  String textoErrado = '';
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
                        "Vamos para os desafios, O que acontece com código a seguir?",
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
                        "Console.WriteLine('A soma é: \n  + (2 + 3));\n",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Inter',
                          fontSize: 24
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
                                "4",
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
                          SizedBox(width: 10),
                          Container(
                            width: 200,
                            child: ElevatedButton(
                              onPressed: () {
                                mostraTexto("Ops! Resposta errada.");
                              },
                              child: Text(
                                "-1",
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
                                "6",
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
                          SizedBox(width: 10),
                          Container(
                            width: 200,
                            child: ElevatedButton(
                              onPressed: () {
                                mostraTexto("");
                                Navigator.pushNamed(context, 'textoSegundo');
                              },
                              child: Text(
                                "5",
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
  