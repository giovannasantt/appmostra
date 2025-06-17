

import 'package:appmostra/elenco.dart';

class Filme {
  final String nome;
  final String sinopse;
  final String img;
  final String genero;
  final String empresa;
  final String direcao;
  final String dadoL;
  final String link;
  final List <Elenco> elenco;

  Filme (this.nome, this.sinopse, this.img, this.genero, this.dadoL, this.direcao, this.elenco, this.empresa, this.link);

  Abrelink(String link)
  {
    
  }
  Voltatela(){}

}