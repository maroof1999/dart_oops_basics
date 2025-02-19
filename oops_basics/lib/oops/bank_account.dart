// 1. Create a class BankAccount with private variable _balance of type num and initialize it to 0.
class BankAccount {
  num? _balance = 0;
  num? getBalance() {
    return _balance!;
  }

  void deposit(num amount) {
    if (amount > 0) {
      _balance = _balance! + amount;
    } else {
      throw ('Amount should be greater than 0');
    }
  }

  void withdraw(num amount) {
    if (amount > 0 && amount < _balance!) {
      _balance = _balance! - amount;
    } else {
      throw ('Amount should be greater than 0 and less than balance');
    }
  }
}
