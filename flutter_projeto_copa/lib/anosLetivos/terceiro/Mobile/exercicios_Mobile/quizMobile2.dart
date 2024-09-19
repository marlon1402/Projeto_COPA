// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings, sort_child_properties_last, sized_box_for_whitespace

import 'package:flutter/material.dart';

class QuizMob2 extends StatefulWidget {
  const QuizMob2({super.key});

  @override
  State<QuizMob2> createState() => _QuizMob2State();
}

class _QuizMob2State extends State<QuizMob2> {

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
                        "Meus Parabéns! Vamos para o proximo desafio, neste botão, que texto ele exibe?",
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
                        "ElevatedButton( \n\n" + 
                        "onPressed: () {\n    " + 
                        "exibeTexto('Ola Mundo!');\n" + "}, \n" + 
                        "child: Text('Mostrar')\n" + "),",
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
                                mostraTexto("");
                                Navigator.pushNamed(context, 'QuizMob3');
                              },
                              child: Text(
                                "'Ola Mundo'",
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
                                "'Somar'",
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
                                "'Mostrar'",
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
                                "'Text'",
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