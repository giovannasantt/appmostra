import 'package:appmostra/elenco.dart';
import 'package:url_launcher/url_launcher.dart';

class Filme {
  final String nome;
  final String sinopse;
  final String img;
  final String genero;
  final String empresa;
  final String direcao;
  final String dadoL;
  final String link;
  final List<Elenco> elenco;
  final String redes;

  Filme(
    this.nome,
    this.sinopse,
    this.img,
    this.genero,
    this.dadoL,
    this.direcao,
    this.elenco,
    this.empresa,
    this.link,
    this.redes,
  );

  Future<void> abreLink() async {
    final Uri uri = Uri.parse(link);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      throw 'Falhou o link aekkkkkk: $link';
    }
  }
  Future<void> abreRedes() async {
    final Uri uri = Uri.parse(redes);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      throw 'Falhou o link aekkkkkk: $redes';
    }
  }

 
}
