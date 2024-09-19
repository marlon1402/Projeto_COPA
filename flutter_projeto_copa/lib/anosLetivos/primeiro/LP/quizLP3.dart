import 'package:flutter/material.dart';

class QuizLP3 extends StatefulWidget {
  const QuizLP3({super.key});

  @override
  State<QuizLP3> createState() => _QuizLP3State();
}

class _QuizLP3State extends State<QuizLP3> {
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
                  SizedBox(height: 50.0),
                  Text(
                    "Complete o código para encontrar a soma dos elementos de uma matriz 3x3.",
                    style: TextStyle(
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 15),
                  SizedBox(
                    width: 390,
                    height: 300,
                    child: Image.asset(
                      'assets/images/1ano/CodeLP3.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(height: 25.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 190,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {
                            checkresposta(0);
                          },
                          child: Text(
                            "matriz[i, j]",
                            style: TextStyle(
                                fontSize: 14,
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
                      SizedBox(width: 10),
                      SizedBox(
                        width: 190,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {
                            checkresposta(0);
                          },
                          child: Text(
                            "matriz[j][i]",
                            style: TextStyle(
                                fontSize: 14,
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
                    ],
                  ),
                  SizedBox(height: 15.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 190,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {
                            checkresposta(1);
                          },
                          child: Text(
                            " matriz[i][j]",
                            style: TextStyle(
                                fontSize: 14,
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
                      SizedBox(width: 10),
                      SizedBox(
                        width: 190,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {
                            checkresposta(0);
                          },
                          child: Text(
                            "soma[i][j]",
                            style: TextStyle(
                                fontSize: 14,
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
                    ],
                  ),
                  SizedBox(height: 20.0),
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
