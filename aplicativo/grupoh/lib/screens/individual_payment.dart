import 'package:flutter/material.dart';
import 'package:grupoh/utilities/aux_variables.dart';

class IndividualPayment extends StatelessWidget {
  const IndividualPayment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: [
          const TextField(
            textAlign: TextAlign.center,
            maxLines: 2,
            maxLength: 48,
            keyboardType: TextInputType.number,
            style: TextStyle(
              color: Colors.black,
            ),
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              hintText: 'Código de Barras',
              hintStyle: TextStyle(
                color: Colors.grey,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                borderSide: BorderSide.none,
              ),
            ),
          ),
          const SizedBox(
            width: 25.0,
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text(
              'Pagar',
              style: kInactiveElevatedButtonTextStyle,
            ),
            style: kInactiveElevatedButtonStyle,
          ),
        ],
      ),
    );
  }
}
