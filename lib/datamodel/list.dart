import 'package:flutter/material.dart';

enum AccountType{
  income(title:"Income",color: Colors.green),
  outcome(title:"Outcome",color : Colors.red);

  const AccountType({required this.title,required this.color});
  final String title;
  final Color color;
}
class Account{
  Account({required this.type,required this.amount});
  AccountType type;
  int amount;
}

List <Account> accountdata = [
  Account(type: AccountType.income, amount: 5000),
  Account(type: AccountType.outcome, amount: 2000),
];