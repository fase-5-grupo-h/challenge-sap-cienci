import 'package:flutter/material.dart';
import 'package:grupoh/screens/app_bar.dart';
import 'package:grupoh/screens/last_payment.dart';
import 'package:grupoh/screens/quick_list_view.dart';
import 'package:grupoh/screens/schedule_payment_widget.dart';
import 'bottom_home_page.dart';

const usuario = 'FIAP';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100.0),
        child: HomeAppBar(),
      ),
      body: Container(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                QuickListView(),
                LastPayment(),
                SchedulePaymentWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/*
* Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                height: 100.0,
                margin: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/nubank.png',
                      width: 25.0,
                      height: 15.0,
                      color: Colors.white,
                    ),
                    const Text(
                      'FIAP',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.all(10.0),
                height: 400,
                decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.all(10.0),
                height: 300,
                child: Stack(
                  children: [
                    BottomHomePage(
                      titulo: 'Pix',
                      icone: Icon(
                        Icons.account_balance_wallet,
                        size: 30.0,
                        color: Colors.white,
                      ),
                    ),
                    BottomHomePage(
                      titulo: 'Depositar',
                      icone: Icon(
                        Icons.account_balance_wallet,
                        size: 30.0,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
* */
