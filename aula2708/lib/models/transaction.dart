class Transaction<T> {
  final T id;
  final double amount;
  final DateTime date;

  Transaction({required this.id, required this.amount, required this.date});
}
