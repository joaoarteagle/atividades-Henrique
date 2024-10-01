import 'package:flutter/material.dart';

class BankingFormPage extends StatefulWidget {
  @override
  _BankingFormPageState createState() => _BankingFormPageState();
}

class _BankingFormPageState extends State<BankingFormPage> {
  final _formKey = GlobalKey<FormState>();
  String? nome;
  double? valor;

  // Lista dinâmica para exibir operações
  List<String> transacoes = [];

  // Função para adicionar transações
  void adicionarTransacao(String nome, double valor) {
    setState(() {
      transacoes.add('$nome depositou R\$ $valor');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aplicação Bancária'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Formulário
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Nome do Cliente',
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Por favor, insira o nome do cliente';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      nome = value;
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Valor do Depósito',
                    ),
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Por favor, insira um valor';
                      }
                      if (double.tryParse(value) == null) {
                        return 'Por favor, insira um valor numérico válido';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      valor = double.parse(value!);
                    },
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
                        adicionarTransacao(nome!, valor!);
                      }
                    },
                    child: Text('Depositar'),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            // ListView dinâmica para mostrar as transações
            Expanded(
              child: ListView.builder(
                itemCount: transacoes.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      leading: Icon(Icons.monetization_on),
                      title: Text(transacoes[index]),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
