import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/product.dart';
import '../pages/product_detail.dart';

class ProductCard extends StatelessWidget {
  // final String productId;
  // final String title;
  // final String description;
  // final String imageUrl;
  // final double price;

  // ProductCard(
  //   this.productId,
  //   this.title,
  //   this.description,
  //   this.imageUrl,
  //   this.price,
  // );

  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Product>(context);

    return InkWell(
      onTap: () {
            Navigator.pushNamed(
              context, 
              ProductDetail.routeName, 
              arguments: product.id,
            );
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: GridTile(
          child: Image.network(
            product.imageUrl,
            fit: BoxFit.cover,
          ),
          footer: GridTileBar(
              backgroundColor: Colors.black87,
              title: Text(product.title),
              leading: IconButton(
                icon: Icon(
                  product.isFavourite? 
                  Icons.favorite: 
                  Icons.favorite_border
                ),
                onPressed: (){
                  product.toggleFavourite();
                },
                color: Theme.of(context).accentColor,
              ),
              trailing: IconButton(
                icon: Icon(Icons.shopping_cart),
                onPressed: () {},
                color: Theme.of(context).accentColor,
              )),
        ),
      ),
    );
  }
}
