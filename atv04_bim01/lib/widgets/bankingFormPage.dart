import 'package:flutter/material.dart';

class BankingFormPage extends StatefulWidget {
  final void Function(String nome, double valor) onSave;
  final Map<String, dynamic>? cliente;

  BankingFormPage({required this.onSave, this.cliente});

  @override
  _BankingFormPageState createState() => _BankingFormPageState();
}

class _BankingFormPageState extends State<BankingFormPage> {
  final _formKey = GlobalKey<FormState>();
  late String _nome;
  late double _valor;

  @override
  void initState() {
    super.initState();
    if (widget.cliente != null) {
      _nome = widget.cliente!['nome'];
      _valor = widget.cliente!['valor'];
    } else {
      _nome = '';
      _valor = 0.0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            widget.cliente != null ? 'Editar Cliente' : 'Adicionar Cliente'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                initialValue: _nome,
                decoration: InputDecoration(labelText: 'Nome do Cliente'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, insira o nome do cliente';
                  }
                  return null;
                },
                onSaved: (value) {
                  _nome = value!;
                },
              ),
              TextFormField(
                initialValue: _valor.toString(),
                decoration: InputDecoration(labelText: 'Valor do Depósito'),
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
                  _valor = double.parse(value!);
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    widget.onSave(_nome, _valor);
                    Navigator.pop(context); // Voltar à tela anterior
                  }
                },
                child: Text(
                    widget.cliente != null ? 'Salvar Alterações' : 'Adicionar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
