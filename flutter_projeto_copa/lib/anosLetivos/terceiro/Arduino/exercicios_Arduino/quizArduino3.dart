// ignore_for_file: camel_case_types, prefer_const_constructors, sort_child_properties_last, sized_box_for_whitespace, prefer_interpolation_to_compose_strings, prefer_adjacent_string_concatenation

import 'package:flutter/material.dart';

class QuizArd3 extends StatefulWidget {
  const QuizArd3({super.key});

  @override
  State<QuizArd3> createState() => _QuizArd3State();
}

class _QuizArd3State extends State<QuizArd3> {

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
                        "Meus Parabéns!! E neste codigo, se o botão for pressionado, o que acontece?",
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
                        "if(BotãoPressionado == true){\n" +
                        " digitalWrite(led, HIGH);\n" +
                        "}\n" +
                        "else{\n" +
                        " digitalWrite(led, LOW);\n" +
                        "}",
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
                                "Liga e Desliga",
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
                          SizedBox(width: 10),
                          Container(
                            width: 200,
                            child: ElevatedButton(
                              onPressed: () {
                                mostraTexto("Ops! Resposta errada.");
                              },
                              child: Text(
                                "Aguarda 10s",
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
                                mostraTexto("");
                                Navigator.pushNamed(context, 'textoTerceiro');
                              },
                              child: Text(
                                "Liga o led",
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
                                "Desliga o led",
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