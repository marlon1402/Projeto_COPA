import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Myiniciar extends StatefulWidget {
  const Myiniciar({super.key});

  @override
  State<Myiniciar> createState() => _MyiniciarState();
}

class _MyiniciarState extends State<Myiniciar> {
    // ignore: unused_field
    int _currentIndex = 0; // Índice da imagem atual
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // ignore: prefer_const_literals_to_create_immutables
      appBar: AppBar(
        centerTitle: true,
        title: const Text("ANOS LETIVOS", 
        style: TextStyle(color: Colors.white,
        fontFamily: 'Inter',
        fontSize: 20,
        fontWeight: FontWeight.bold
        ),
      ),
     backgroundColor: Color.fromARGB(255, 140, 82, 255),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          }, 
            // ignore: prefer_const_constructors
            icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 30,
          )
        ),
      ),
      body: Stack(
        children: [
          Container(
            color: Color.fromARGB(255, 248, 248, 248), // Fundo do Scaffold
          ),
          Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ImageCarousel(
                    onPageChanged: (index) {
                      setState(() {
                        _currentIndex = index;
                      });
                    },
                  ),
                ),
              ),
              _buildIndicator(), // Adiciona o widget de indicadores abaixo do carrossel
            ],
          ),
        ],
      ),
    );
  }
}
Widget _buildIndicator() {
    var _currentIndex;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0), // Espaçamento vertical do indicador
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          3, // O número de indicadores deve corresponder ao número de imagens
          (index) => Container(
            margin: EdgeInsets.symmetric(horizontal: 4.0),
            width: 8.0,
            height: 8.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: _currentIndex == index
                  ? Color.fromARGB(255, 140, 82, 255)
                  : Colors.grey, // Cor dos indicadores
            ),
          ),
        ),
      ),
    );
  }


class ImageCarousel extends StatelessWidget {
  final List<String> imgList = [
    'assets/images/primeiro.png',
    'assets/images/segundo.png',
    'assets/images/terceiro.png',
  ];

  final ValueChanged<int> onPageChanged; // Callback para quando a página muda

  ImageCarousel({super.key, required this.onPageChanged});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: imgList.length,
      itemBuilder: (context, index, realIndex) {
        final imgUrl = imgList[index];
        return Container(
          margin: EdgeInsets.symmetric(horizontal: 8.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0), 
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0), 
            
          child: Image.asset(
            imgUrl,
            fit: BoxFit.cover,
          ),
          )
        );
        
      },
      options: CarouselOptions(
        height: double.infinity, // Usa altura infinita para ocupar espaço disponível
        autoPlay: true,
        enlargeCenterPage: true,
        viewportFraction: 1.0,
        aspectRatio: 16/9,
        initialPage: 0,
        onPageChanged: (index, reason) {
          onPageChanged(index); // Notifica o índice da página atual
        },
      ),
    );
  }
}
