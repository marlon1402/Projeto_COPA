import 'package:flutter/material.dart';

class QuizLP1 extends StatefulWidget {
  const QuizLP1({super.key});

  @override
  State<QuizLP1> createState() => _QuizLP1State();
}

class _QuizLP1State extends State<QuizLP1> {
  String Mensagem = "";
  Color MCor = Colors.transparent;

  void checkresposta(int resposta) {
    setState(() {
      if (resposta == 1) {
        Navigator.pushNamed(context, 'QuizLP2');
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
            color: const Color.fromARGB(255, 25, 7, 63),
            height: double.infinity,
            width: double.infinity,
          ),
          Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 50.0),
                      const Text(
                        "O que o seguinte código C faz?",
                        style: TextStyle(
                          fontSize: 19.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        width: 400,
                        height: 400,
                        child: Image.asset(
                          'assets/images/1ano/CodeLP1.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                      const SizedBox(height: 40.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 220,
                            height: 70,
                            child: ElevatedButton(
                              onPressed: () {
                                checkresposta(0);
                              },
                              child: const Text(
                                "      Imprime\n''Resultado: 4''",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.bold),
                              ),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      const Color.fromARGB(255, 140, 82, 255),
                                  foregroundColor: Colors.white,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 30, vertical: 10),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  )),
                            ),
                          ),
                          const SizedBox(width: 10),
                          SizedBox(
                            width: 220,
                            height: 70,
                            child: ElevatedButton(
                              onPressed: () {
                                checkresposta(1);
                              },
                              child: const Text(
                                "       Imprime\n''Resultado: 10''",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.bold),
                              ),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      const Color.fromARGB(255, 140, 82, 255),
                                  foregroundColor: Colors.white,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 30, vertical: 10),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  )),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 220,
                            height: 70,
                            child: ElevatedButton(
                              onPressed: () {
                                checkresposta(0);
                              },
                              child: const Text(
                                "Entra em um\n loop infinito",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.bold),
                              ),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      const Color.fromARGB(255, 140, 82, 255),
                                  foregroundColor: Colors.white,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 30, vertical: 10),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  )),
                            ),
                          ),
                          const SizedBox(width: 10),
                          SizedBox(
                            width: 220,
                            height: 70,
                            child: ElevatedButton(
                              onPressed: () {
                                checkresposta(0);
                              },
                              child: const Text(
                                "      Imprime\n''Resultado: 0''",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.bold),
                              ),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      const Color.fromARGB(255, 140, 82, 255),
                                  foregroundColor: Colors.white,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 30, vertical: 10),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  )),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20.0),
                      Text(
                        Mensagem,
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: MCor,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
