import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:moriarity/Widgets/QrCode.dart';
=======
import 'package:moriarity/billing.dart';
>>>>>>> cfba1daf8af48cbdfdf6a09432d3e40525351d17

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Moriarity',
      theme: ThemeData.dark(),
      home: BillingPage(),
    );
  }
}
