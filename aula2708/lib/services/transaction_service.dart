import '../models/transaction.dart';

class TransactionService<T> {
  List<Transaction<T>> transactions = [];

  void addTransaction(Transaction<T> transaction) {
    transactions.add(transaction);
  }

  List<Transaction<T>> getTransactions() {
    return transactions;
  }
}
