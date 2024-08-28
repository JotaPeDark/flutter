import 'package:flutter_test/flutter_test.dart';
import '../../lib/models/transaction.dart';

void main() {
  test('Transaction is created correctly', () {
    final transaction = Transaction(id: 1, amount: 100.0, date: DateTime.now());
    expect(transaction.amount, 100.0);
  });
}
