import '../models/account.dart';

class AccountRepository<T> {
  final List<Account<T>> _accounts = [];

  void addAccount(Account<T> account) {
    _accounts.add(account);
  }

  Account<T>? getAccountById(T id) {
  try {
    return _accounts.firstWhere((account) => account.id == id);
  } catch (e) {
    return null;
  }
}

}