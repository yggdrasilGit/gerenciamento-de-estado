import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'carrinho.dart';
import 'tela_carrinho.dart';

class TelaLoja extends StatelessWidget {
  final produtos = ['Camisa', 'Calça', 'Tênis', 'Boné', 'Mochila'];

  @override
  Widget build(BuildContext context) {
    final carrinho = Provider.of<Carrinho>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Loja'),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => TelaCarrinho()),
              );
            },
          ),

          Padding(
            padding: EdgeInsets.all(10),
            child: Center(
              child: Text(carrinho.itens.length.toString()),
            ),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: produtos.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(produtos[index]),
            trailing: IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                carrinho.adicionar(produtos[index]);
              },
            ),
          );
        },
      ),
    );
  }
}