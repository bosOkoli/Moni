import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:loanapp/data/model/moni_loan.dart';
import 'package:logger/logger.dart';

class AppService extends ChangeNotifier {
  Dio dio = Dio();
  final logger = Logger();

  MoniLoan? _moniLoan;
  MoniLoan? get moniloan => _moniLoan;
  bool isloading = false;

  Future getMoniloan() async {
    isloading = true;
    const url = 'https://moni-staging-1.vercel.app/api/loans';
    final response = await dio.get(url);

    logger.d(response.data);
    _moniLoan = MoniLoan.fromJson(response.data);
    isloading = false;
    notifyListeners();
  }
}
