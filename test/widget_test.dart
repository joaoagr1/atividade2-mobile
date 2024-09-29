import 'package:flutter_test/flutter_test.dart';

import '../lib/main.dart';

void main() {
  group('ContaBancaria', () {
    test('Deve realizar um depósito corretamente', () {
      final conta = ContaBancaria<double>(1000.0);
      conta.depositar(200.0);
      expect(conta.consultarSaldo(), equals(1200.0));
    });

    test('Deve realizar um saque corretamente', () {
      final conta = ContaBancaria<int>(1000);
      conta.sacar(300);
      expect(conta.consultarSaldo(), equals(700));
    });

    test('Não deve permitir saque com saldo insuficiente', () {
      final conta = ContaBancaria<int>(500);
      conta.sacar(600);
      expect(conta.consultarSaldo(), equals(500));
    });
  });
}
