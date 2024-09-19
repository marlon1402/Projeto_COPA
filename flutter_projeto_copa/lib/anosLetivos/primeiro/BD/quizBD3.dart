import 'package:flutter/material.dart';

class QuizBD3 extends StatefulWidget {
  const QuizBD3({super.key});

  @override
  State<QuizBD3> createState() => _QuizBD3State();
}

class _QuizBD3State extends State<QuizBD3> {
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
            color: const Color.fromARGB(255, 25, 7, 63),
            height: double.infinity,
            width: double.infinity,
          ),
          Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.90,
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
                        "O que faz o comando SQL a seguir?",
                        style: TextStyle(
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 40),
                      const Text(
                        "INSERT INTO cursos (nome, duracao) VALUES ('Desenvolvimento de Sistemas', 2);",
                        style: TextStyle(
                          fontSize: 21.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 60),
                      SizedBox(
                        width: 330,
                        height: 70,
                        child: ElevatedButton(
                          onPressed: () {
                            checkresposta(1);
                          },
                          child: const Text(
                            "Insere um novo curso chamado ''Desenvolvimento de Sistemas'' com duração de 2 anos",
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
                      const SizedBox(height: 20.0),
                      SizedBox(
                        width: 330,
                        height: 70,
                        child: ElevatedButton(
                          onPressed: () {
                            checkresposta(0);
                          },
                          child: const Text(
                            "Atualiza o curso ''Desenvolvimento de Sistemas'' para uma duração de 2 anos",
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
                      const SizedBox(height: 20.0),
                      SizedBox(
                        width: 330,
                        height: 70,
                        child: ElevatedButton(
                          onPressed: () {
                            checkresposta(0);
                          },
                          child: const Text(
                            "Deleta o curso ''Desenvolvimento de Sistemas''",
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
                      const SizedBox(height: 20.0),
                      SizedBox(
                        width: 330,
                        height: 70,
                        child: ElevatedButton(
                          onPressed: () {
                            checkresposta(0);
                          },
                          child: const Text(
                            "Conta quantos cursos têm duração de 2 anos",
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
