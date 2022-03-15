import 'package:flutter/material.dart';

class ActiveLoan {
  final String name;
  final String date;
  final String status;

  final String amount;
  final Color textColors;

  ActiveLoan({
    required this.name,
    required this.date,
    required this.status,
    required this.amount,
    required this.textColors,
  });
}

List<ActiveLoan> activeUsers = [
  ActiveLoan(
      name: 'Halima Yaya',
      date: '2 days to due date',
      status: 'Active Loan',
      amount: "10,555,000",
      textColors: Colors.blue),
  ActiveLoan(
      name: 'Uche Ngozi',
      date: '2 days to due date',
      status: 'Active Loan',
      amount: "10,555,000",
      textColors: Colors.yellow),
  ActiveLoan(
      name: 'Anisa Lulu',
      date: 'Oct 2005',
      status: 'Active Loan',
      amount: "10,555,000",
      textColors: Colors.orange),
  ActiveLoan(
      name: 'Anisa Lulu',
      date: 'Oct 2005',
      status: 'Active Loan',
      amount: "10,555,000",
      textColors: Colors.orange),
  ActiveLoan(
      name: 'Anisa Lulu',
      date: 'Oct 2005',
      status: 'Active Loan',
      amount: "10,555,000",
      textColors: Colors.orange),
  ActiveLoan(
      name: 'Anisa Lulu',
      date: 'Oct 2005',
      status: 'Active Loan',
      amount: "10,555,000",
      textColors: Colors.orange),
  ActiveLoan(
      name: 'Anisa Lulu',
      date: 'Oct 2005',
      status: 'Active Loan',
      amount: "10,555,000",
      textColors: Colors.orange),
];
