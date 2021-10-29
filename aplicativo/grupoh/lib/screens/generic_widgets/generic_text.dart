import 'package:flutter/cupertino.dart';

class GenericText extends StatelessWidget {
  GenericText({required this.text, required this.textStyle});

  final String text;
  final TextStyle textStyle;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: textStyle,
    );
  }
}
