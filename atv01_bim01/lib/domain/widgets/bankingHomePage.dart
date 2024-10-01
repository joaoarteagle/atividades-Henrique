import 'package:flutter/material.dart';

class BankingHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bem-vindo ao Banco XYZ'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Card(
              elevation: 4,
              child: ListTile(
                leading: Icon(Icons.account_balance_wallet),
                title: Text('Saldo em Conta'),
                subtitle: Text('R\$ 1.500,00'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            Card(
              elevation: 4,
              child: ListTile(
                leading: Icon(Icons.payment),
                title: Text('Pagamentos Pendentes'),
                subtitle: Text('3 contas a pagar'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            Card(
              elevation: 4,
              child: ListTile(
                leading: Icon(Icons.history),
                title: Text('Histórico de Transações'),
                subtitle: Text('Última transação: R\$ 200,00'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            Card(
              elevation: 4,
              child: ListTile(
                leading: Icon(Icons.credit_card),
                title: Text('Cartão de Crédito'),
                subtitle: Text('Fatura atual: R\$ 600,00'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            Card(
              elevation: 4,
              child: ListTile(
                leading: Icon(Icons.person),
                title: Text('Perfil do Usuário'),
                subtitle: Text('Editar suas informações'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
