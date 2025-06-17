import 'package:flutter/material.dart';
import 'package:appmostra/pagina_inicial.dart';

class Pagina1 extends StatelessWidget {
  const Pagina1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Página 1')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Filmes"),
            Image.asset('assets/img/posteroppen.jpg', width: 220, height: 220),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navega para a TelaInicio
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const TelaInicio()),
                );
              },
              child: const Text('Ir para Tela Inicial'),
            ),
          ],
        ),
      ),
    );
  }
}
