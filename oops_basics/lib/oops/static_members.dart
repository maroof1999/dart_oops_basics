// 1. Create a class BankAccount with private variable _balance of type num and initialize it to 0.
class BankAccount {
  num? _balance = 0;

  static int noOfObject = 0; //static variable or static member

  BankAccount({required double balance}) : _balance = balance {
    noOfObject++;
  }
  //default constructor
  BankAccount.newClient() : _balance = 0 {
    noOfObject++;
  }
  //named constructor
  BankAccount.vipClient(double startAmout) : _balance = startAmout * 1.2 {
    noOfObject++;
  }
  //named constructor

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

//static members are accessed using class name not using object or instance of class
//static members are shared among all instances of class
//static members are not initialized using constructor

class StaticMembers {
  static String name = 'John';
  static void changeName(String myName) {
    name = myName;
  }

  static void printName() {
    print(name);
  }
}

void main() {
  BankAccount account1 = BankAccount(balance: 1000);
  BankAccount account2 = BankAccount.newClient();
  BankAccount account3 = BankAccount.vipClient(1000);
//  account1.noOfObject;//accessing static member
  //static members are accessed using class name not using object or instance of class
  print(BankAccount.noOfObject);

  StaticMembers.printName();
  StaticMembers.changeName('Doe');
  StaticMembers.printName();
}
