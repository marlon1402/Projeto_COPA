// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_projeto_copa/anosLetivos/segundo/PI/projetoi.dart';
import 'package:flutter_projeto_copa/anosLetivos/segundo/desktop/desk.dart';
import 'package:flutter_projeto_copa/anosLetivos/segundo/inova/inovacao.dart';
import 'package:flutter_projeto_copa/anosLetivos/segundo/java/multiplataforma.dart';
import 'package:flutter_projeto_copa/anosLetivos/segundo/web2/web.dart';
import 'package:flutter_projeto_copa/anosLetivos/terceiro/Arduino/Arduino.dart';
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
        'textoPrimeiro': (context) => Textoprimeiro(),
        'textoSegundo': (context) => Textosegundo(),

        //terceiro ano
        'textoTerceiro': (context) => Textoterceiro(),
        'mobile': (context) => mobileText(),
        'arduino': (context) => arduinoText(),
        'topicos': (context) => TopicosText(),
        'projeto2': (context) => ProjetoDoisText(),

        //segundo
         'desk': (context) => Mydesk(),
         'inova': (context) => Myinova(),
         'java': (context) => Myjava(),
         'pi': (context) => Myintegrador(),
         'web2': (context) => MYweb2(), 


       
      },
    );
  }
}
