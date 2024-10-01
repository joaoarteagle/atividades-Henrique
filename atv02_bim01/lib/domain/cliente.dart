import 'package:atv02_bim01/domain/contaBancaria.dart';

class Cliente<T> {
  T nome;
  ContaBancaria<T> conta;

  Cliente(this.nome, this.conta);

  void mostrarInformacoes() {
    print('Cliente: $nome');
    print('Número da Conta: ${conta.numeroDaConta}');
    print('Saldo Atual: R\$ ${conta.saldo}');
  }
}
