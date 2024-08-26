import '../services/bank_service.dart';

class HomeViewModel {
  final BankService _bankService = BankService();

  List<Map<String, dynamic>> get bankAccounts => _bankService.getBankAccounts();

}
