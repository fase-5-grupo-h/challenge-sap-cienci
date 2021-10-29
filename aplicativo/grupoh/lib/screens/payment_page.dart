import 'package:flutter/material.dart';
import 'package:grupoh/screens/generic_widgets/generic_text.dart';
import 'package:grupoh/screens/individual_payment.dart';
import 'package:grupoh/screens/mass_payment.dart';
import 'package:grupoh/utilities/aux_variables.dart';

import 'generic_widgets/generic_app_bar.dart';

enum Option {
  indiv,
  mass,
}

class PaymentPage extends StatefulWidget {
  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  static TextStyle firstButtonTextStyle = kActiveElevatedButtonTextStyle;
  static TextStyle secondButtonTextStyle = kInactiveElevatedButtonTextStyle;
  ButtonStyle firstButtonStyle = kActiveElevatedButtonStyle;
  ButtonStyle secondButtonStyle = kInactiveElevatedButtonStyle;
  Widget selectedWidget = IndividualPayment();

  void selectedButton(selectedOption) {
    setState(() {
      if (selectedOption == Option.indiv) {
        firstButtonTextStyle = kActiveElevatedButtonTextStyle;
        secondButtonTextStyle = kInactiveElevatedButtonTextStyle;
        firstButtonStyle = kActiveElevatedButtonStyle;
        secondButtonStyle = kInactiveElevatedButtonStyle;
        selectedWidget = IndividualPayment();
      } else {
        firstButtonTextStyle = kInactiveElevatedButtonTextStyle;
        secondButtonTextStyle = kActiveElevatedButtonTextStyle;
        firstButtonStyle = kInactiveElevatedButtonStyle;
        secondButtonStyle = kActiveElevatedButtonStyle;
        selectedWidget = MassPayment();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70.0),
        child: GenericAppBar(title: 'Pagar'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(
          5.0,
        ),
        child: Column(
          children: [
            Row(
              children: const [
                Text(
                  'Forma de Pagamento do Boleto',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    selectedButton(Option.indiv);
                  },
                  child: GenericText(
                    text: 'Individual',
                    textStyle: firstButtonTextStyle,
                  ),
                  style: firstButtonStyle,
                ),
                const SizedBox(
                  width: 25.0,
                ),
                ElevatedButton(
                  onPressed: () {
                    selectedButton(Option.mass);
                  },
                  child: GenericText(
                    text: 'Em Massa',
                    textStyle: secondButtonTextStyle,
                  ),
                  style: secondButtonStyle,
                ),
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            Expanded(
              child: selectedWidget,
            ),
            /*Container(
              padding: const EdgeInsets.all(20.0),
              child: selectedWidget,
            ),*/
          ],
        ),
      ),
    );
  }
}
