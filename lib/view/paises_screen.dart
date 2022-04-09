import 'package:flutter/material.dart';
import 'package:sigla_pais_app/service/requisicao.dart';
import 'package:sigla_pais_app/view/menu.dart';
import 'package:sigla_pais_app/view/paises_dados.dart';

class PaisesScreen extends StatelessWidget {
  final String pais;
  PaisesScreen({this.pais = ""});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Siglas dos Países"),
        actions: [
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) =>
                          PaisesScreen(pais: "")));
            },
          ),
        ],
      ),
      body: PaisesDados(pais: pais),
      drawer: Menu(),
    );
  }
}
