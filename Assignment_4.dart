/*
Ar G Ho
CSE 17
HSTU
*/

abstract class Account {
  int accountNumber;
  double balance;

  Account(this.accountNumber, this.balance);

  void deposit(double amount) {
    balance = balance + amount;
  }

  void withdraw(double amount);
}

class SavingsAccount extends Account {
  double interestRate;

  SavingsAccount(int accountNumber, double balance, this.interestRate)
      : super(accountNumber, balance);

  @override
  void withdraw(double amount) {
    if (balance >= amount) {
      balance = balance - amount;
      balance = balance * (1 + interestRate);
    } else {
      print('Insufficient funds.');
    }
  }
}

class CurrentAccount extends Account {
  double overdraftLimit;

  CurrentAccount(int accountNumber, double balance, this.overdraftLimit)
      : super(accountNumber, balance);

  @override
  void withdraw(double amount) {
    if (balance + overdraftLimit >= amount) {
      balance = balance - amount;
    } else {
      print('Insufficient funds.');
    }
  }
}

void main() {
  //SavingsAccount
  print('Savings Account:');

  Account savingsAccount = SavingsAccount(987654321, 10000.0, 0.09);
  print(' Balance: ${savingsAccount.balance} BDT');

  savingsAccount.deposit(500.0);
  print(' Balance after deposit: ${savingsAccount.balance} BDT');

  savingsAccount.withdraw(200.0);
  print(' Balance after withdrawal: ${savingsAccount.balance} BDT\n');

  //CurrentAccount
  print('Current Account:');

  Account currentAccount = CurrentAccount(654321, 2000.0, 1000.0);
  print(' Balance: ${currentAccount.balance} BDT');

  currentAccount.deposit(6000.0);
  print(' Balance after deposit: ${currentAccount.balance} BDT');

  currentAccount.withdraw(4000.0);
  print(' Balance after withdrawal: ${currentAccount.balance} BDT');
}

/*
Output:

Savings Account:
 Balance: 10000.0 BDT
 Balance after deposit: 10500.0 BDT
 Balance after withdrawal: 11227.0 BDT

Current Account:
 Balance: 2000.0 BDT
 Balance after deposit: 8000.0 BDT
 Balance after withdrawal: 4000.0 BDT
 */