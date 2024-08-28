import 'package:flutter_test/flutter_test.dart';
import '../../lib/models/account.dart';

void main() {
  test('Account deposit increases balance', () {
    final account = Account(id: 1);
    account.deposit(100.0);
    expect(account.balance, 100.0);
  });

  test('Account withdraw decreases balance', () {
    final account = Account(id: 1, balance: 100.0);
    account.withdraw(50.0);
    expect(account.balance, 50.0);
  });

  test('Account withdraw throws exception for insufficient funds', () {
    final account = Account(id: 1, balance: 50.0);
    expect(() => account.withdraw(100.0), throwsException);
  });
}
