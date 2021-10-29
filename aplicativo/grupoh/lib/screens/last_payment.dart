import 'package:flutter/material.dart';
import 'package:grupoh/model/payment.dart';
import 'package:grupoh/utilities/aux_variables.dart';
import 'package:grupoh/utilities/util.dart';

class LastPayment extends StatefulWidget {
  @override
  _LastPaymentState createState() => _LastPaymentState();
}

class _LastPaymentState extends State<LastPayment> {
  Payment ultPag = Payment(categoria: 'Imposto', valor: 4690.90);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        Navigator.pushNamed(context, '/extrato');
      },
      padding: EdgeInsets.zero,
      shape: const Border(
        top: BorderSide(
          color: Colors.white12,
          width: 2,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(22.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: const [
                Icon(
                  Icons.credit_score_outlined,
                  color: Colors.white,
                  size: 30.0,
                ),
                SizedBox(width: 5.0),
                Text(
                  'Último Pagamento',
                  style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text(
              'Categoria: ${ultPag.categoria}',
              style: const TextStyle(
                color: Colors.white54,
                fontSize: 12.0,
              ),
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: Util.currencyFormatter.format(ultPag.valor),
                        style: kLastPaymentStyle,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              children: const [
                Text(
                  'Visualizar histórico',
                  style: TextStyle(
                    color: Colors.white54,
                    fontSize: 12.0,
                  ),
                ),
                SizedBox(
                  width: 5.0,
                ),
                Icon(
                  Icons.navigate_next_outlined,
                  color: Colors.white54,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
