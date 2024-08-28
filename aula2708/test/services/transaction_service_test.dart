import 'package:flutter_test/flutter_test.dart';
import '../../lib/services/transaction_service.dart';
import '../../lib/models/transaction.dart';

void main() {
  test('TransactionService adds a transaction', () {
    final service = TransactionService<int>();
    final transaction = Transaction(id: 1, amount: 100.0, date: DateTime.now());
    service.addTransaction(transaction);
    expect(service.getTransactions().length, 1);
  });
}
