import 'package:flutter/material.dart';
import '../models/item.dart';
import '../widgets/item_card.dart';

class ListScreen extends StatelessWidget {
  final List<Item> items;

  ListScreen({required this.items});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Lista de Itens')),
      body: items.isEmpty
          ? Center(child: Text('Nenhum item adicionado.'))
          : ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return ItemCard(item: items[index]);
              },
            ),
    );
  }
}
