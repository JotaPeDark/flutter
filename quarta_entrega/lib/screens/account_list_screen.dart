import 'package:flutter/material.dart';

class AccountListScreen extends StatelessWidget {
  final List<String> bankAccounts;

  AccountListScreen({required this.bankAccounts});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bank Accounts'),
      ),
      body: ListView.builder(
        itemCount: bankAccounts.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(bankAccounts[index]),
            trailing: IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {
                // Adicione aqui a lógica de remoção no CRUD
              },
            ),
          );
        },
      ),
    );
  }
}
