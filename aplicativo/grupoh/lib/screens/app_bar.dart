import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(color: Colors.grey[900]),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 14.0, vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Material(
                    color: Colors.transparent,
                    child: Icon(
                      Icons.person_outlined,
                      color: Colors.white,
                      size: 28.0,
                    ),
                  ),
                  Row(
                    children: const [
                      Material(
                        color: Colors.transparent,
                        child: Icon(
                          Icons.help_outline,
                          color: Colors.white,
                          size: 28,
                        ),
                      ),
                      Material(
                        color: Colors.transparent,
                        child: Icon(
                          Icons.forward_to_inbox_outlined,
                          color: Colors.white,
                          size: 28,
                        ),
                      ),
                      Material(
                        color: Colors.transparent,
                        child: Icon(
                          Icons.settings,
                          color: Colors.white,
                          size: 28,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: const [
                  Text(
                    'Olá, FIAP',
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
