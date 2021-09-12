import 'package:flutter/material.dart';

import '../widgets/drawer.dart';

class ManageProduct extends StatelessWidget {
  static const routeName = '/Manage Products';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Manage Product'),
      ),
      drawer: AppDrawer(),
      body: Center(
        child: Text('Manage Products'),
      )
    );
  }
}