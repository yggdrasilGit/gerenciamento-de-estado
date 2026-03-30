import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'carrinho.dart';

class TelaCarrinho extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final carrinho = Provider.of<Carrinho>(context);

    return Scaffold(
      appBar: AppBar(title: Text('Carrinho')),
      body: ListView(
        children: carrinho.itens.map((item) {
          return ListTile(
            title: Text(item),
            trailing: IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {
                carrinho.remover(item);
              },
            ),
          );
        }).toList(),
      ),
    );
  }
}