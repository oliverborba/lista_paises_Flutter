import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class Requisicao {
  static Future<List> requisicaoPaises() async {
    Map paises = Map();
    String apiUrl = 'https://api.nobelprize.org/v1/country.json';
    final Uri url = Uri.parse(apiUrl);

    http.Response response = await http.get(url);

    debugPrint("Resultado ${response.body}");

    if (response.statusCode == 200) {
      paises = json.decode(response.body);

      return paises.values.first;
    } else {
      throw Exception("Falho Requisicao");
    }
  }
}
