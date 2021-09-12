import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/products.dart';
import './product_card.dart';

class ProductGrid extends StatelessWidget {
  const ProductGrid({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<Products>(context); //this is to provide a refrence to the provider and create a direct link with the provider
    final products = productsData.items;

    return GridView.builder(
      padding: const EdgeInsets.all(10),
      itemBuilder: (ctx, idx) => ChangeNotifierProvider.value( //it automatically cleans up the data of provider when we switch the screen
        //create: (c) => products[idx], // this basically links all the different instances of product to the Product provider
        value: products[idx],
        child: ProductCard(
            // products[idx].id,
            // products[idx].title,
            // products[idx].description,
            // products[idx].imageUrl,
            // products[idx].price,
          ),
      ),
      itemCount: products.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
    );
  }
}
