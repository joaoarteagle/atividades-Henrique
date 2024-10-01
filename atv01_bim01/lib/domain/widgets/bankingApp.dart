import 'package:atv01_bim01/domain/widgets/bankingHomePage.dart';
import 'package:flutter/material.dart';

class BankingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplicação Bancária',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: BankingHomePage(),
    );
  }
}
