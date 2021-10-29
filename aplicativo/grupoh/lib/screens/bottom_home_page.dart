import 'package:flutter/material.dart';

class BottomHomePage extends StatelessWidget {
  BottomHomePage({required this.titulo, required this.icone});

  final String titulo;
  final Icon icone;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            color: Color.fromRGBO(145, 64, 169, 1.0)),
        constraints: BoxConstraints(
            minWidth: MediaQuery.of(context).size.width * 0.26,
            maxWidth: MediaQuery.of(context).size.width * 0.26,
            maxHeight: MediaQuery.of(context).size.height * 0.15),
        child: Stack(
          children: [
            Positioned(
              left: 1.0,
              child: icone,
            ),
            Positioned(
              bottom: 2.0,
              left: 3.0,
              child: Text(
                titulo,
                style: TextStyle(color: Colors.white, fontSize: 16.0),
              ),
            )
          ],
        ),
      ),
    );
  }
}
