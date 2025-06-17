import 'package:flutter/material.dart';
import 'package:appmostra/filme.dart';
import 'package:appmostra/elenco.dart';

class TelaInicio extends StatefulWidget {
  const TelaInicio({super.key});

  @override
  State<TelaInicio> createState() => _TelaInicioState();
}

class _TelaInicioState extends State<TelaInicio> {
  late PageController pageCtrl;

  final List<Filme> filmes = [
    Filme(
      'Oppenheimer',
      'Baseado na vida do físico J. Robert Oppenheimer.',
      'assets/img/posteroppen.jpg',
      'Drama/Histórico',
      'Universal Pictures',
      'Christopher Nolan',
      [
        Elenco('Cillian Murphy', 'J. Robert Oppenheimer'),
        Elenco('Emily Blunt', 'Katherine Oppenheimer'),
      ],
      '20 de julho de 2023',
      'https://youtube.com',
    ),
    Filme(
      'Five Nights at Freddy\'s',
      'Um segurança enfrenta animatrônicos assassinos.',
      'assets/img/posterfnaf.jpg',
      'Terror',
      'Blumhouse',
      'Emma Tammi',
      [Elenco('Josh Hutcherson', 'Mike Schmidt')],
      '26 de outubro de 2023',
      'https://youtube.com',
    ),
    // estrutura para add mais filmes dps
  ];

  @override
  void initState() {
    pageCtrl = PageController();
    super.initState();
  }

  @override
  void dispose() {
    pageCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 26, 26, 35),
      appBar: AppBar(
        title: const Text('Filmes', style: TextStyle(color: Colors.white)),
        backgroundColor: const Color.fromARGB(255, 94, 86, 141),
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 350,
            child: PageView(
              controller: pageCtrl,
              children: filmes.map((filme) {
                return Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          filme.img,
                          height: 300,
                          width: 200,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              filme.nome,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              'Gênero: ${filme.genero}', //Concatenação parecida com js
                              style: const TextStyle(color: Colors.white),
                            ),
                            Text(
                              'Direção: ${filme.direcao}',
                              style: const TextStyle(color: Colors.white),
                            ),
                            Text(
                              'Produtora: ${filme.dadoL}',
                              style: const TextStyle(color: Colors.white),
                            ),
                            Text(
                              'Lançamento: ${filme.empresa}',
                              style: const TextStyle(color: Colors.white),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              filme.sinopse,
                              style: const TextStyle(color: Colors.white70),
                            ),
                            const SizedBox(height: 8),
                            const Text(
                              'Elenco:',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            ...filme.elenco.map(
                              (e) => Text(
                                '${e.ator} como ${e.personagem}',
                                style: const TextStyle(color: Colors.white70),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
          ),
          const SizedBox(height: 235),
          
          // Botão de Voltar para Pagina1
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context); // Volta para Pagina1
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 94, 86, 141),
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
            ),
            child: const Text(
              'Voltar',
              style: TextStyle(color: Colors.white),
            ),
          ),

          const SizedBox(height: 10),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () => pageCtrl.previousPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.linear,
                ),
                child: const Text(
                  'Anterior',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              TextButton(
                onPressed: () => pageCtrl.nextPage(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.linear,
                ),
                child: const Text(
                  'Próximo',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}