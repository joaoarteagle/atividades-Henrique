import 'package:atv04_bim01/widgets/bankingHomePage.dart';
import 'package:flutter/material.dart';

class BankingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplicação Bancária',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BankingHomePage(),
    );
  }
}
