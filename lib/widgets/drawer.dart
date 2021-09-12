import 'package:flutter/material.dart';

import '../pages/orders.dart';
import '../pages/manage_product.dart';

class AppDrawer extends StatelessWidget {
  Widget buildList(String title, IconData icon, BuildContext ctx, Function tapHandler) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
        color: Theme.of(ctx).primaryColor,
      ),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 20,
        )
      ),
      onTap: tapHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            color: Theme.of(context).accentColor,
            height: 120,
            width: double.infinity,
            alignment: Alignment.bottomLeft,
            child: Text(
              'Happy Shopping',
              style: Theme.of(context).textTheme.title,
            ),
          ),
          buildList(
            'Shop', 
            Icons.shop, 
            context, 
            () {
              Navigator.of(context).pushReplacementNamed('/');
            }
          ),
          buildList(
            'Orders', 
            Icons.note, 
            context,
            (){
              Navigator.of(context).pushReplacementNamed(Order.routeName);
            }
          ),
          buildList(
            'Manage Products', 
            Icons.manage_accounts, 
            context,
            (){
              Navigator.of(context).pushReplacementNamed(ManageProduct.routeName);
            }
          ),
        ],
      ),
    );
  }
}
