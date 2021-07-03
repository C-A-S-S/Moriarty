import 'package:flutter/material.dart';
// import 'package:moriarity/Widgets/QrCode.dart';
import 'package:moriarity/billing.dart';
import 'package:moriarity/provider/QrValueProvider.dart';
import 'package:provider/provider.dart';

void main() {
  // runApp(MyApp());
  runApp(
    /// Providers are above [MyApp] instead of inside it, so that tests
    /// can use [MyApp] while mocking the providers
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => QrVal()),
      ],
      child: MyApp(),
    ),
  );
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
