import 'package:flutter/material.dart';
import 'package:appmostra/filme.dart';
import 'package:appmostra/elenco.dart';

class TelaFilmes extends StatefulWidget {
  final int initialPage;
  const TelaFilmes({super.key, this.initialPage = 0});

  @override
  State<TelaFilmes> createState() => _TelaFilmesState();
}

class _TelaFilmesState extends State<TelaFilmes> {
  late PageController pageCtrl;

  final List<Filme> filmes = <Filme>[
    Filme(
      'Oppenheimer',
      'O físico J. Robert Oppenheimer trabalha com uma equipe de cientistas durante o Projeto Manhattan, levando ao desenvolvimento da bomba atômica.',
      'assets/img/posteroppen.jpg',
      'Suspense, Obra de Época, Drama, Biografia, Histórico',
      'US\$ 100 milhões',
      'Christopher Nolan',
      [
        Elenco('Cillian Murphy', 'J. Robert Oppenheimer'),
        Elenco('Emily Blunt', 'Katherine "Kitty" Oppenheimer'),
        Elenco('Matt Damon', 'General Leslie Groves'),
        Elenco('Robert Downey Jr.', 'Lewis Strauss'),
        Elenco('Florence Pugh', 'Jean Tatlock'),
        Elenco('Benny Safdie', 'Edward Teller'),
        Elenco('Josh Hartnett', 'Ernest Lawrence'),
      ],
      '20 de julho de 2023',
      'https://www.youtube.com/watch?v=uYPbbksJxIg',
      'https://www.instagram.com/universalpictures/',
    ),
     Filme(
      'Five Nights at Freddy\'s',
      'No Freddy Fazbear\'s Pizza, robôs animados fazem a festa das crianças durante o dia. Quando chega a noite, eles se transformam em assassinos psicopatas.',
      'assets/img/posterfnaf.jpg',
      'Terror, Suspense, Adaptação, Drama, Mistério, Sobrenatural',
      'US\$ 20 milhões',
      'Emma Tammi',
      [
        Elenco('Josh Hutcherson', 'Mike Schmidt'),
        Elenco('Piper Rubio', 'Abby Schmidt'),
        Elenco('Elizabeth Lail', 'Vanessa'),
        Elenco('Matthew Lillard', 'Steve Raglan / William Afton'),
        Elenco('Mary Stuart Masterson', 'Tia Jane'),
      ],
      '26 de outubro de 2023',
      'https://www.youtube.com/watch?v=h2lVX71L_3A',
      'https://www.instagram.com/blumhouse/'
    ),
    Filme(
      'Carandiru',
      'Um médico sanitarista se oferece para realizar o trabalho de prevenção ao vírus HIV no Carandiru, maior presídio da América Latina...',
      'assets/img/postercaran.jpeg',
      'Drama, Crime, Biográfico',
      'US\$ 4 milhões',
      'Héctor Babenco',
      [
        Elenco('Luiz Carlos Vasconcelos', 'Doutor (Drauzio Varella)'),
        Elenco('Milton Gonçalves', 'Chico'),
        Elenco('Aílton Graça', 'Majestade'),
        Elenco('Rodrigo Santoro', 'Lady Di'),
      ],
      '11 de abril de 2003',
      'https://www.youtube.com/watch?v=g2aWn4LJ0cQ',
      'https://www.instagram.com/globofilmes/',
    ),
     Filme(
      'Silent Hill',
      'A filha de Rose é atormentada por visões desde pequena. Desesperada com a piora da menina, Rose decide levá-la à cidade que ela sempre menciona durante os pesadelos. Próximas ao local, elas sofrem um acidente e a criança desaparece misteriosamente.',
      'assets/img/postersilent.jpg',
      'Terror, Mistério, Suspense, Fantasia',
      'US\$ 50 milhões',
      'Christophe Gans',
      [
        Elenco('Radha Mitchell', 'Rose Da Silva'),
        Elenco('Laurie Holden', 'Cybil Bennett'),
        Elenco('Sean Bean', 'Christopher Da Silva'),
        Elenco('Jodelle Ferland', 'Sharon / Alessa'),
        Elenco('Deborah Kara Unger', 'Dahlia Gillespie'),
      ],
      '18 de agosto de 2006',
      'https://www.youtube.com/watch?v=M3gPh6S0t1g',
      'https://www.instagram.com/konami/'
    ),
    Filme(
      'Chernobyl',
      'Chernobyl narra a explosão da usina nuclear em 1986, na Ucrânia, considerado o maior desastre nuclear da história. A série acompanha o cientista Valery Legasov, a física Ulana Khomyuk e o político Boris Shcherbina na investigação das causas do acidente. Mostra também os efeitos devastadores da radiação em pessoas como o bombeiro Vasily e sua esposa grávida, Lyudmilla. Ao longo da trama, os protagonistas enfrentam autoridades poderosas para expor a negligência que levou à tragédia.',
      'assets/img/postercher.jpg',
      'Documentário, Terror, História, Catástrofe, Obra de Época, Soap opera, Drama, Suspense',
      'US\$ 40 milhões',
      'Craig Mazin',
      [
        Elenco('Jared Harris', 'Valery Legasov'),
        Elenco('Stellan Skarsgård', 'Boris Shcherbina'),
        Elenco('Emily Watson', 'Ulana Khomyuk'),
        Elenco('Paul Ritter', 'Anatoly Dyatlov'),
        Elenco('Jessie Buckley', 'Lyudmilla Ignatenko'),
        Elenco('Adam Nagaitis', 'Vasily Ignatenko'),
      ],
      '6 de maio de 2019',
      'https://youtu.be/s9APLXM9Ei8?si=obE49lZc8R99Yti6',
      'https://www.instagram.com/hbo/'
    ),
   
  ];

  @override
  void initState() {
    pageCtrl = PageController(initialPage: widget.initialPage);
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
          Expanded(
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
                        child: SingleChildScrollView(
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
                              Text('Gênero: ${filme.genero}',
                                  style: const TextStyle(color: Colors.white)),
                              Text('Direção: ${filme.direcao}',
                                  style: const TextStyle(color: Colors.white)),
                              Text('Orçamento: ${filme.dadoL}',
                                  style: const TextStyle(color: Colors.white)),
                              const SizedBox(height: 8),
                              
                              ElevatedButton(
                                onPressed: () => filme.abreLink(),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      const Color.fromARGB(255, 94, 86, 141),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 80, vertical: 12),
                                ),
                                
                                child: const Text(
                                  'Assistir Trailer',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              const SizedBox(height: 8),
                              ElevatedButton(
                                onPressed: () => filme.abreRedes(),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      const Color.fromARGB(255, 94, 86, 141),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 80, vertical: 12),
                                ),
                                
                                child: const Text(
                                  'Redes Sociais',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                               const SizedBox(height: 10),
                              Text(filme.sinopse,
                                  style: const TextStyle(color: Colors.white70)),
                              const SizedBox(height: 10),
                              const SizedBox(height: 10),
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
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 94, 86, 141),
              padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 12),
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
