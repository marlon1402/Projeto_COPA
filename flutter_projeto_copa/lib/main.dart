// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_projeto_copa/anosLetivos/primeiro/BD/BD.dart';
import 'package:flutter_projeto_copa/anosLetivos/primeiro/BD/quizBD1.dart';
import 'package:flutter_projeto_copa/anosLetivos/primeiro/BD/quizBD2.dart';
import 'package:flutter_projeto_copa/anosLetivos/primeiro/BD/quizBD3.dart';
import 'package:flutter_projeto_copa/anosLetivos/primeiro/Informatica/Info.dart';
import 'package:flutter_projeto_copa/anosLetivos/primeiro/LP/LP.dart';
import 'package:flutter_projeto_copa/anosLetivos/primeiro/LP/quizLP1.dart';
import 'package:flutter_projeto_copa/anosLetivos/primeiro/LP/quizLP2.dart';
import 'package:flutter_projeto_copa/anosLetivos/primeiro/LP/quizLP3.dart';
import 'package:flutter_projeto_copa/anosLetivos/primeiro/SORC/SORC.dart';
import 'package:flutter_projeto_copa/anosLetivos/primeiro/Web1/Web1.dart';
import 'package:flutter_projeto_copa/anosLetivos/primeiro/Web1/quizW1.dart';
import 'package:flutter_projeto_copa/anosLetivos/primeiro/Web1/quizW3.dart';
import 'package:flutter_projeto_copa/anosLetivos/primeiro/Web1/quizw2.dart';
import 'package:flutter_projeto_copa/anosLetivos/segundo/PI/projetoi.dart';
import 'package:flutter_projeto_copa/anosLetivos/segundo/desktop/desk.dart';
import 'package:flutter_projeto_copa/anosLetivos/segundo/desktop/quiz2des.dart';
import 'package:flutter_projeto_copa/anosLetivos/segundo/desktop/quizdesk.dart';
import 'package:flutter_projeto_copa/anosLetivos/segundo/inova/inovacao.dart';
import 'package:flutter_projeto_copa/anosLetivos/segundo/java/exerciciosJava/quizJava1.dart';
import 'package:flutter_projeto_copa/anosLetivos/segundo/java/exerciciosJava/quizJava2.dart';
import 'package:flutter_projeto_copa/anosLetivos/segundo/java/multiplataforma.dart';
import 'package:flutter_projeto_copa/anosLetivos/segundo/web2/web.dart';
import 'package:flutter_projeto_copa/anosLetivos/terceiro/Arduino/Arduino.dart';
import 'package:flutter_projeto_copa/anosLetivos/terceiro/Arduino/exercicios_Arduino/quizArduino1.dart';
import 'package:flutter_projeto_copa/anosLetivos/terceiro/Arduino/exercicios_Arduino/quizArduino2.dart';
import 'package:flutter_projeto_copa/anosLetivos/terceiro/Arduino/exercicios_Arduino/quizArduino3.dart';
import 'package:flutter_projeto_copa/anosLetivos/terceiro/Mobile/exercicios_Mobile/quizMobile1.dart';
import 'package:flutter_projeto_copa/anosLetivos/terceiro/Mobile/exercicios_Mobile/quizMobile2.dart';
import 'package:flutter_projeto_copa/anosLetivos/terceiro/Mobile/exercicios_Mobile/quizMobile3.dart';
import 'package:flutter_projeto_copa/creditos.dart';
import 'package:flutter_projeto_copa/anosLetivos/primeiro/materiasPrimeiro.dart';
import 'package:flutter_projeto_copa/anosLetivos/segundo/materiasSegundo.dart';
import 'package:flutter_projeto_copa/anosLetivos/terceiro/Mobile/Mobile.dart';
import 'package:flutter_projeto_copa/anosLetivos/terceiro/PI2/Projeto2.dart';
import 'package:flutter_projeto_copa/anosLetivos/terceiro/TTI/Topicos.dart';
import 'package:flutter_projeto_copa/anosLetivos/terceiro/materiasTerceiro.dart';
import 'package:flutter_projeto_copa/homePage.dart';
import 'package:flutter_projeto_copa/iniciar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Descobrindo </DS>',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        '/': (context) => HomePage(),
        'creditos': (context) => Creditos(),
        'iniciar': (context) => Myiniciar(),

        //primeiro ano
        'textoPrimeiro': (context) => Textoprimeiro(),
        'BD': (context) => BD(),
        'Informatica': (context) => Informatica(),
        'LP': (context) => LP(),
        'SORC': (context) => SORC(),
        'Web1': (context) => Web1(),
        'QuizBD1': (context) => QuizBD1(),
        'QuizBD2': (context) => QuizBD2(),
        'QuizBD3': (context) => QuizBD3(),
        'QuizW1': (context) => QuizW1(),
        'QuizW2': (context) => QuizW2(),
        'QuizW3': (context) => QuizW3(),
        'QuizLP1': (context) => QuizLP1(),
        'QuizLP2': (context) => QuizLP2(),
        'QuizLP3': (context) => QuizLP3(),

        //segundo
        'textoSegundo': (context) => Textosegundo(),
        'desk': (context) => Mydesk(),
        'inova': (context) => Myinova(),
        'java': (context) => Myjava(),
        'pi': (context) => Myintegrador(),
        'Myquiz2': (context) => Myquiz2(),
        'Quides1': (context) => Quides1(),
        'QuizJava1': (context) => Quizjava1(),
        'QuizJava2': (context) => Quizjava2(),
        

        //terceiro ano
        'textoTerceiro': (context) => Textoterceiro(),
        'mobile': (context) => mobileText(),
        'arduino': (context) => arduinoText(),
        'topicos': (context) => TopicosText(),
        'projeto2': (context) => ProjetoDoisText(),
        'QuizArd1': (context) => QuizArd1(),
        'QuizArd2': (context) => QuizArd2(),
        'QuizArd3': (context) => QuizArd3(),
        'QuizMob1': (context) => QuizMob1(),
        'QuizMob2': (context) => QuizMob2(),
        'QuizMob3': (context) => QuizMob3(),

      },
    );
  }
}
