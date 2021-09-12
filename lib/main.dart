import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'pages/product_overview.dart';
import 'pages/orders.dart';
import 'pages/manage_product.dart';
import 'providers/products.dart';
import 'pages/product_detail.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider( // this to added to attach the provider to the topmost Widget which needs these values and directly make links to other widgets rather than passing it down
      create: (ctx) => Products(), // for version 3.0.0 of sdk we use builder instead of create
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.purple,
          accentColor: Colors.deepOrange,
          fontFamily: 'Lato',
          textTheme: ThemeData.light().textTheme.copyWith(
            title: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            )
          )
        ),
        //home: MyHomePage(title: 'Flutter Demo Home Page'),
        routes: {
          '/': (ctx) => ProductOverview(),
          Order.routeName: (ctx) => Order(),
          ManageProduct.routeName: (ctx) => ManageProduct(),
          ProductDetail.routeName: (ctx) => ProductDetail(),
        },
      ),
    );
  }
}