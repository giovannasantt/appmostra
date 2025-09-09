import 'package:flutter/material.dart';
import 'package:appmostra/pagina2.dart';

class Pagina1 extends StatelessWidget {
  const Pagina1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 26, 26, 35),
      appBar: AppBar(
        title: const Text('Início', style: TextStyle(color: Colors.white)),
        backgroundColor: const Color.fromARGB(255, 94, 86, 141),
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          final bool isSmallScreen = constraints.maxWidth < 600;

          final filmes = [
            _buildPoster(context, 'assets/img/posteroppen.jpg', "Oppenheimer", 0, isSmallScreen),
            _buildPoster(context, 'assets/img/posterfnaf.jpg', "Five Nights at Freddy's", 1, isSmallScreen),
            _buildPoster(context, 'assets/img/postercaran.jpeg', "Carandiru", 2, isSmallScreen),
            _buildPoster(context, 'assets/img/postersilent.jpg', "Silent Hill", 3, isSmallScreen),
            _buildPoster(context, 'assets/img/postercher.jpg', "Chernobyl", 4, isSmallScreen),
          ];

          if (isSmallScreen) {
            // Vertical, um filme por linha, centralizado horizontalmente
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  for (var i = 0; i < filmes.length; i++) ...[
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 150),
                      child: filmes[i],
                    ),
                  ],
                ],
              ),
            );
          } else {
            // Horizontal com scroll
            return SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  for (var i = 0; i < filmes.length; i++) ...[
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: filmes[i],
                    ),
                  ]
                ],
              ),
            );
          }
        },
      ),
    );
  }

  Widget _buildPoster(BuildContext context, String imgPath, String title, int pageIndex, bool isSmallScreen) {
    // Tamanho médio, centralizado
    final double width = isSmallScreen ? 250 : 140;
    final double height = isSmallScreen ? 320 : 220;

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center, // centraliza horizontalmente
      children: [
        Image.asset(
          imgPath,
          width: width,
          height: height,
          fit: BoxFit.cover,
        ),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => TelaFilmes(initialPage: pageIndex),
              ),
            );
          },
          child: Text(title, textAlign: TextAlign.center),
        ),
      ],
    );
  }
}
