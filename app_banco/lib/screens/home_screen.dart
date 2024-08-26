import 'package:flutter/material.dart';
import '../view_models/home_view_model.dart';
import '../widgets/account_card.dart';

class HomeScreen extends StatelessWidget {
  final HomeViewModel viewModel = HomeViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Banking App'),
      ),
      body: ListView(
        padding: EdgeInsets.all(8.0),
        children: viewModel.bankAccounts.map((account) {
          return AccountCard(
            accountName: account['accountName'],
            accountNumber: account['accountNumber'],
            balance: account['balance'],
          );
        }).toList(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance),
            label: 'Accounts',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        selectedItemColor: Colors.teal.shade800,
      ),
    );
  }
}
