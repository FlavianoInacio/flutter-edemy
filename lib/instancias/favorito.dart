import 'package:flutter_pokemons/instancias/entity.dart';

import 'carro.dart';

class Favorito extends Entity{

  int id;
  String nome;

  Favorito.fromCarro(Carro c){
    id = c.id;
    nome = c.nome;
  }
  Favorito.fromMap(Map<String, dynamic> json) {
    id = json['id'];
    nome = json['nome'];
  }
  @override
  Map<String, dynamic> toMap() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nome'] = this.nome;
    return data;
  }

  @override
  String toString() {
    return 'Favorito{id: $id, nome: $nome}';
  }
}