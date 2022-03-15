import 'package:flutter/material.dart';
import 'package:loanapp/data/service.dart';
import 'package:loanapp/screens/homescreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (_) => AppService(), child: const LoanApp()));
}

class LoanApp extends StatefulWidget {
  const LoanApp({Key? key}) : super(key: key);

  @override
  State<LoanApp> createState() => _LoanAppState();
}

class _LoanAppState extends State<LoanApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
