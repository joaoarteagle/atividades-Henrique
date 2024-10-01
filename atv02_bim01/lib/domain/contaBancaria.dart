class ContaBancaria<V> {
  V numeroDaConta;
  double saldo;

  ContaBancaria(this.numeroDaConta, this.saldo);

  void depositar(double valor) {
    saldo += valor;
    print('Depósito de R\$ $valor realizado. Saldo atual: R\$ $saldo');
  }

  void sacar(double valor) {
    if (valor <= saldo) {
      saldo -= valor;
      print('Saque de R\$ $valor realizado. Saldo atual: R\$ $saldo');
    } else {
      print('Saldo insuficiente para saque de R\$ $valor.');
    }
  }

  double obterSaldo() {
    return saldo;
  }
}
