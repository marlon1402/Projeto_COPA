import 'package:flutter/material.dart';

class QuizW3 extends StatefulWidget {
  const QuizW3({super.key});

  @override
  State<QuizW3> createState() => _QuizW3State();
}

class _QuizW3State extends State<QuizW3> {
  String Mensagem = "";
  Color MCor = Colors.transparent;

  void checkresposta(int resposta) {
    setState(() {
      if (resposta == 1) {
        Navigator.pushNamed(context, 'textoPrimeiro');
      } else {
        Mensagem = "Ops! Resposta errada.";
        MCor = Colors.red;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Color.fromARGB(255, 25, 7, 63),
            height: double.infinity,
            width: double.infinity,
          ),
          Center(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.85,
              width: MediaQuery.of(context).size.width * 0.90,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 15.0),
                  Text(
                    "Dado o seguinte código HTML e CSS, qual será a cor de fundo do elemento <div>?",
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: 300,
                    height: 300,
                    child: Image.asset(
                      'assets/images/1ano/CodeWeb1.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(height: 15),
                  SizedBox(
                    width: 300,
                    height: 35,
                    child: ElevatedButton(
                      onPressed: () {
                        checkresposta(0);
                      },
                      child: Text(
                        "A cor de fundo será sempre vermelha.",
                        style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.bold),
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 140, 82, 255),
                          foregroundColor: Colors.white,
                          padding: EdgeInsets.symmetric(
                              horizontal: 30, vertical: 10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          )),
                    ),
                  ),
                  SizedBox(height: 12.0),
                  SizedBox(
                    width: 300,
                    height: 35,
                    child: ElevatedButton(
                      onPressed: () {
                        checkresposta(0);
                      },
                      child: Text(
                        "A cor de fundo será vermelha quando o mouse passar sobre o <div>.",
                        style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.bold),
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 140, 82, 255),
                          foregroundColor: Colors.white,
                          padding: EdgeInsets.symmetric(
                              horizontal: 30, vertical: 10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          )),
                    ),
                  ),
                  SizedBox(height: 12.0),
                  SizedBox(
                    width: 300,
                    height: 35,
                    child: ElevatedButton(
                      onPressed: () {
                        checkresposta(0);
                      },
                      child: Text(
                        "A cor de fundo será azul quando o mouse passar sobre o <div>.",
                        style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.bold),
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 140, 82, 255),
                          foregroundColor: Colors.white,
                          padding: EdgeInsets.symmetric(
                              horizontal: 30, vertical: 10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          )),
                    ),
                  ),
                  SizedBox(height: 12.0),
                  SizedBox(
                    width: 300,
                    height: 35,
                    child: ElevatedButton(
                      onPressed: () {
                        checkresposta(1);
                      },
                      child: Text(
                        "A cor de fundo será azul quando o <div> for clicado.",
                        style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.bold),
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 140, 82, 255),
                          foregroundColor: Colors.white,
                          padding: EdgeInsets.symmetric(
                              horizontal: 30, vertical: 10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          )),
                    ),
                  ),
                  SizedBox(height: 12.0),
                  Text(
                    Mensagem,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: MCor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
