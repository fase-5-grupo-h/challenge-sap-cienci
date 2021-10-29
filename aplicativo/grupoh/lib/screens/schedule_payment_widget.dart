import 'package:flutter/material.dart';

class SchedulePaymentWidget extends StatefulWidget {
  @override
  _SchedulePaymentWidgetState createState() => _SchedulePaymentWidgetState();
}

class _SchedulePaymentWidgetState extends State<SchedulePaymentWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
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
                  Icons.history_outlined,
                  color: Colors.white,
                  size: 30.0,
                ),
                SizedBox(width: 5.0),
                Text(
                  'Agendamentos',
                  style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: const [
                Text(
                  'Sem agendamentos',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              children: const [
                Text(
                  'Visualizar agendamentos',
                  style: TextStyle(
                    color: Colors.white54,
                    fontSize: 13.0,
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
            )
          ],
        ),
      ),
    );
  }
}
