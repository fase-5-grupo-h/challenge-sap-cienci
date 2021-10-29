import 'package:flutter/material.dart';
import 'package:grupoh/model/payment.dart';

const List<IconData> kIconQuickList = [
  Icons.monetization_on_outlined,
  Icons.receipt_outlined,
  Icons.payments_outlined,
  Icons.payments_outlined,
  Icons.help_outline,
];

const kLastPaymentStyle = TextStyle(
  fontSize: 30.0,
  fontWeight: FontWeight.bold,
);

const kActiveElevatedButtonTextStyle = TextStyle(color: Colors.black);
const kInactiveElevatedButtonTextStyle = TextStyle(color: Colors.white);

final kActiveElevatedButtonStyle = ElevatedButton.styleFrom(
    primary: Colors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30.0),
      side: const BorderSide(color: Colors.white),
    ));

final kInactiveElevatedButtonStyle = ElevatedButton.styleFrom(
  primary: const Color(0x66C8C8C8),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(30.0),
    side: const BorderSide(color: Colors.white),
  ),
);

final List<Payment> pagList = [
  Payment(categoria: 'Imposto', valor: 4690.90),
  Payment(categoria: 'Fornecedor', valor: 5842.70),
  Payment(categoria: 'Imposto', valor: 985.75),
  Payment(categoria: 'Imposto', valor: 4750.90),
  Payment(categoria: 'Fornecedor', valor: 27950.50),
  Payment(categoria: 'Imposto', valor: 2487.75),
];

final List<Payment> pagListExtended = [
  Payment(categoria: 'Imposto', valor: 4690.90),
  Payment(categoria: 'Consumo', valor: 1785.15),
  Payment(categoria: 'Fornecedor', valor: 5842.70),
  Payment(categoria: 'Consumo', valor: 981.15),
  Payment(categoria: 'Imposto', valor: 985.75),
  Payment(categoria: 'Imposto', valor: 4750.90),
  Payment(categoria: 'Fornecedor', valor: 10950.50),
  Payment(categoria: 'Imposto', valor: 2487.75),
  Payment(categoria: 'Consumo', valor: 3785.21),
  Payment(categoria: 'Consumo', valor: 278.89),
];
