import 'package:flutter/material.dart';

class QrVal with ChangeNotifier {
  String value = "";
  List<String> sOptions = <String>[
    'sample1',
    'sample2',
    'sample3',
  ];

  // int get count => _count;

  void newQrValue(String qr) {
    value = qr;
    sOptions.add(value);
    notifyListeners();
  }
}
