class ContaBancaria<T extends num> {
  T saldo;

  ContaBancaria(this.saldo);

  void depositar(T valor) {
    saldo = (saldo + valor) as T;
    print('Depósito de $valor realizado. Saldo atual: $saldo');
  }

  void sacar(T valor) {
    if (valor > saldo) {
      print('Saldo insuficiente!');
    } else {
      saldo = (saldo - valor) as T;
      print('Saque de $valor realizado. Saldo atual: $saldo');
    }
  }

  T consultarSaldo() {
    return saldo;
  }
}

void main() {
  var contaCorrente = ContaBancaria<double>(1000.50);
  contaCorrente.depositar(500.25);
  contaCorrente.sacar(200.75);
  print('Saldo final: ${contaCorrente.consultarSaldo()}');

  var contaPoupanca = ContaBancaria<int>(1000);
  contaPoupanca.depositar(200);
  contaPoupanca.sacar(150);
  print('Saldo final: ${contaPoupanca.consultarSaldo()}');
}
