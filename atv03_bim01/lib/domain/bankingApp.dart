import 'package:atv03_bim01/domain/form/bankingFormPage.dart';
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
      home: BankingFormPage(),
    );
  }
}
