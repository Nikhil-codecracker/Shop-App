import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/products.dart';

class ProductDetail extends StatelessWidget {
  static const routeName = '/product-detail';

  @override
  Widget build(BuildContext context) {
    final prodId = ModalRoute.of(context).settings.arguments as String;
    final loadProduct =Provider.of<Products>(
      context, 
      listen: false // this tells us weather to update the widget every time some change is made or not
                    // since we just want to read the id once and it does not matter weather information change or not we can put value as false
    ).findById(prodId);

    return Scaffold(
      appBar: AppBar(
        title: Text(loadProduct.title),
      ),
      body: Column(
        children: [
          Container(
              color: Theme.of(context).accentColor,
              height: 350,
              width: double.infinity,
              child: Image.network(
                loadProduct.imageUrl,
                fit: BoxFit.cover,
              )),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Text(loadProduct.description),
          )
        ],
      ),
    );
  }
}
