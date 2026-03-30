import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'carrinho.dart';
import 'tela_da_loja.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => Carrinho(),
      child: MeuApp(),
    ),
  );
}

class MeuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: TelaLoja(),
    );
  }
}