import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:grupoh/screens/extract.dart';
import 'package:grupoh/screens/home_page.dart';
import 'package:grupoh/screens/payment_page.dart';
import 'package:grupoh/screens/report_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      supportedLocales: const [Locale('pt', '')],
      initialRoute: '/',
      theme: ThemeData.dark(),
      routes: {
        '/': (context) => HomePage(),
        '/extrato': (context) => Extract(),
        '/pagamento': (context) => PaymentPage(),
        '/relatorio': (context) => ReportPage(),
      },
    );
  }
}
