// 1. Create a class BankAccount with private variable _balance of type num and initialize it to 0.
class BankAccount {
  num? _balance = 0;
  BankAccount({required double balance}) {
    _balance = balance;
  }//default constructor
  BankAccount.newClient() {
    _balance = 0;
  }//named constructor
  BankAccount.vipClient(double startAmout) {
    _balance = startAmout*1.2;
  }//named constructor

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
void main(){
  BankAccount account1 = BankAccount(balance: 1000);
  print(account1.getBalance());
  account1.deposit(500);
  print(account1.getBalance());
  account1.withdraw(200);
  print(account1.getBalance());
  BankAccount account2 = BankAccount.newClient();
  print(account2.getBalance());
  BankAccount account3 = BankAccount.vipClient(1000);
  print(account3.getBalance());
}