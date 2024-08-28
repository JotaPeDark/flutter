import '../models/account.dart';

class AccountService<T> {
  final Account<T> account;

  AccountService(this.account);

  void deposit(double amount) {
    account.deposit(amount);
  }

  void withdraw(double amount) {
    account.withdraw(amount);
  }

  double getBalance() {
    return account.balance;
  }
}
