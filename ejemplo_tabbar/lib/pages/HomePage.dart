import 'package:ejemplo_tabbar/pages/pagina1.dart';
import 'package:ejemplo_tabbar/pages/pagina2.dart';
import 'package:flutter/material.dart';


import 'pagina3.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff075E54),
          title: const Text('USM Eats'),
          bottom: const TabBar(tabs: [
            Tab(
              icon: Icon(Icons.account_balance_wallet_sharp),
            ),
            Tab(
              icon: Icon(Icons.adb_rounded),
            ),
            Tab(
              icon: Icon(Icons.access_alarm),
            ),
          ]),
        ),
        body: TabBarView(
          children: [
            pagina1(),
            pagina2(),
            pagina3()
          ],
        )
      ),
    );
  }
}