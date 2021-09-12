import 'package:flutter/material.dart';

import '../widgets/drawer.dart';
import '../dummy_data.dart';
import '../widgets/product_card.dart';
import '../widgets/product_grid.dart';

class ProductOverview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shop'),
      ),
      drawer: AppDrawer(),
      body: ProductGrid(),
    );
  }
}

