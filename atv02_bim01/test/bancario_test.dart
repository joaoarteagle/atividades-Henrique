import 'package:atv02_bim01/domain/cliente.dart';
import 'package:atv02_bim01/domain/contaBancaria.dart';
import 'package:flutter_test/flutter_test.dart';

import '../lib/main.dart'; // Substitua pelo caminho correto da sua aplicação

void main() {
  group('Teste de ContaBancaria', () {
    test('Testa depósito', () {
      var conta = ContaBancaria<int>(123456, 1000.0);
      conta.depositar(500.0);
      expect(conta.obterSaldo(), 1500.0);
    });

    test('Testa saque com saldo suficiente', () {
      var conta = ContaBancaria<int>(123456, 1000.0);
      conta.sacar(200.0);
      expect(conta.obterSaldo(), 800.0);
    });

    test('Testa saque com saldo insuficiente', () {
      var conta = ContaBancaria<int>(123456, 100.0);
      conta.sacar(200.0);
      expect(conta.obterSaldo(), 100.0); // Saldo não deve mudar
    });
  });

  group('Teste de Cliente', () {
    test('Testa criação de cliente e exibição de informações', () {
      var conta = ContaBancaria<String>("123456", 1000.0);
      var cliente = Cliente<String>('João Silva', conta);

      expect(cliente.nome, 'João Silva');
      expect(cliente.conta.numeroDaConta, 123456);
      expect(cliente.conta.saldo, 1000.0);
    });
  });
}
