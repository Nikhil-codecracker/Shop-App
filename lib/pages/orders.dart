import 'package:flutter/material.dart';

import '../widgets/drawer.dart';

class Order extends StatelessWidget {
  static const routeName = '/Orders';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Order'),
      ),
      drawer: AppDrawer(),
      body: Center(
        child: Text('Orders'),
      )
    );
  }
}