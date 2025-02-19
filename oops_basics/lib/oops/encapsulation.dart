// Define a class with encapsulation
// Encapsulation is the bundling of data and the methods that operate on that data into a single unit.
class BankAccount {
  // Private fields (Encapsulation)
  String _accountHolder;
  double _balance;

  // Constructor
  BankAccount(this._accountHolder, this._balance);

  // Getter method to access balance safely
  double get balance => _balance;

  // Setter method to update balance securely
  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
      print("Deposited: \$${amount}");
    } else {
      print("Deposit amount must be positive.");
    }
  }

  // Method to withdraw money with validation
  void withdraw(double amount) {
    if (amount > 0 && amount <= _balance) {
      _balance -= amount;
      print("Withdrawn: \$${amount}");
    } else {
      print("Invalid withdrawal amount.");
    }
  }

  // Method to display account details
  void displayAccountInfo() {
    print("Account Holder: $_accountHolder");
    print("Current Balance: \$$_balance");
  }
}

// Main function to test encapsulation
void main() {
  // Create an object of BankAccount
  BankAccount account = BankAccount("Maroof Ali", 1000);

  // Display initial details
  account.displayAccountInfo();

  // Depositing money
  account.deposit(500);
  print("Updated Balance: \$${account.balance}");

  // Withdrawing money
  account.withdraw(300);
  print("Updated Balance: \$${account.balance}");

  // Trying to withdraw an invalid amount
  account.withdraw(2000);

  // Trying to deposit a negative amount
  account.deposit(-100);
}
