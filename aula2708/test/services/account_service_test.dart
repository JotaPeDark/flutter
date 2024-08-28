import 'package:flutter_test/flutter_test.dart';
import '../../lib/services/account_service.dart';
import '../../lib/models/account.dart';

void main() {
  test('AccountService deposit increases balance', () {
    final account = Account(id: 1);
    final service = AccountService(account);
    service.deposit(100.0);
    expect(service.getBalance(), 100.0);
  });
}
