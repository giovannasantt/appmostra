import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:appmostra/pagina1.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Carregar o JSON
  String data = await rootBundle.loadString('json/filmes.json');
  List<dynamic> filmes = jsonDecode(data);

  // Mostrar no console
  for (var filme in filmes) {
    print("Título: ${filme['title']}");
    print("Descrição: ${filme['description']}");
    print("Gêneros: ${filme['genres']}");
    print("Ano: ${filme['year']}");
    print("Imagem: ${filme['image_url']}");
    print("------");
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Pagina1(),
    );
  }
}
