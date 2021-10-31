import 'package:flutter/material.dart';
import 'package:grupoh/utilities/util.dart';

class GenericListViewItemProcess extends StatelessWidget {
  const GenericListViewItemProcess({
    required this.iconData,
    required this.header,
    required this.value,
    required this.status,
    required this.data,
  });

  final Widget iconData;
  final String header;
  final double value;
  final Widget status;
  final String data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            iconData,
            const SizedBox(
              width: 10.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text('Categoria: $header'),
                    //const Text('Ontem'),
                  ],
                ),
                Row(
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: Util.currencyFormatter.format(value),
                            style: const TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    status,
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'Realizado em $data',
                      style: const TextStyle(
                        color: Colors.white30,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
