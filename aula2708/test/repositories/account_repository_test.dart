import 'package:flutter_test/flutter_test.dart';
import '../../lib/repositories/account_repository.dart';
import '../../lib/models/account.dart';

void main() {
  test('AccountRepository adds and retrieves an account', () {
    final repository = AccountRepository<int>();
    final account = Account(id: 1);
    repository.addAccount(account);
    final retrievedAccount = repository.getAccountById(1);
    expect(retrievedAccount, isNotNull);
  });
}
