import 'package:flutter/material.dart';

class Carrinho extends ChangeNotifier {
  List<String> itens = [];

  void adicionar(String produto) {
    itens.add(produto);
    notifyListeners();
  }

  void remover(String produto) {
    itens.remove(produto);
    notifyListeners();
  }
}