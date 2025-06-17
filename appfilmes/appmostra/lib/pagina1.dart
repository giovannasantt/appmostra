import 'package:flutter/material.dart';
import 'package:appmostra/pagina2.dart';

class Pagina1 extends StatelessWidget {
  const Pagina1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: const Color.fromARGB(255, 26, 26, 35),
      appBar: AppBar(title: const Text('Início',style: TextStyle(color: Colors.white)),
      backgroundColor: const Color.fromARGB(255, 94, 86, 141),
       leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
      ),
   body: Padding(
  padding: const EdgeInsets.all(16.0),
  child: SingleChildScrollView( 
    scrollDirection: Axis.horizontal,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // oppenheimer
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/img/posteroppen.jpg',
              width: 140,
              height: 220,
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const TelaFilmes()),
                );
              },
              child: const Text('Oppenheimer'),
            ),
          ],
        ),
        const SizedBox(width: 20), // Espaço 

        //fnaf
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/img/posterfnaf.jpg',
              width: 180,
              height: 220,
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                 Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const TelaFilmes()),
                );
              },
              child: const Text('Five Nights at freddys'),
            ),
          ],
        ),
      ],
    ),
  ),
),



    );
  }
}
