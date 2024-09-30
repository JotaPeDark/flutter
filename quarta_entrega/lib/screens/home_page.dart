import 'package:flutter/material.dart';
import 'form_screen.dart';
import 'account_list_screen.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> bankAccounts = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Banking App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FormScreen(onSubmit: (account) {
                      setState(() {
                        bankAccounts.add(account);
                      });
                    }),
                  ),
                );
              },
              child: Text('Add Bank Account'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AccountListScreen(bankAccounts: bankAccounts),
                  ),
                );
              },
              child: Text('View Accounts'),
            ),
          ],
        ),
      ),
    );
  }
}
