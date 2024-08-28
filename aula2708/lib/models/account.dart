class Account<T> {
  final T id;
  double balance;

  Account({required this.id, this.balance = 0.0});

  void deposit(double amount) {
    balance += amount;
  }

  void withdraw(double amount) {
    if (amount <= balance) {
      balance -= amount;
    } else {
      throw Exception('Insufficient funds');
    }
  }
}
