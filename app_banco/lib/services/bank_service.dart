class BankService {
  // Simula a obtenção de dados das contas bancárias
  List<Map<String, dynamic>> getBankAccounts() {
    return [
      {
        'accountName': 'Checking Account',
        'accountNumber': '1234 5678 9101',
        'balance': calculateBalance(2500.00),
      },
      {
        'accountName': 'Savings Account',
        'accountNumber': '9876 5432 1011',
        'balance': calculateBalance(12000.50, interestRate: 0.02),
      },
    ];
  }

  // Função que aplica uma taxa de juros ao saldo
  double calculateBalance(double baseBalance, {double interestRate = 0.01}) {
    return baseBalance + (baseBalance * interestRate);
  }
}
