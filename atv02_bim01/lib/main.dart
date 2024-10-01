import 'package:atv02_bim01/domain/cliente.dart';
import 'package:atv02_bim01/domain/contaBancaria.dart';
import 'package:flutter/material.dart';

void main() {
  // Criando uma conta bancária usando Generics
  var contaCorrente = ContaBancaria<String>("123456", 1000.0);

  // Criando um cliente associado à conta
  var cliente = Cliente<String>('João Silva', contaCorrente);

  // Exibindo informações da conta
  cliente.mostrarInformacoes();

  // Realizando operações bancárias
  cliente.conta.depositar(500.0);
  cliente.conta.sacar(300.0);
  cliente.mostrarInformacoes();
}
