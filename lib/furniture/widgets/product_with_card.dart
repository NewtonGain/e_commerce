import 'package:e_commerce/furniture/model/product.dart';
import 'package:flutter/material.dart';

class ProductWithCard extends StatelessWidget {
  Function(Product) addToCard;
  int idx;

  ProductWithCard(this.addToCard, this.idx);

  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          SizedBox(
            height: 5,
          ),
          Image.asset(
            "images/" + idx.toString() + ".jpg",
            height: 150,
            width: 150,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "Title",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "This is Sub Title",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "Price",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            alignment: Alignment.bottomCenter,
            child: ElevatedButton(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.shopping_bag),
                  Text(
                    "Add To Card",
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
              onPressed: () {
                addToCard(Product(
                  "Image",
                  "Title",
                  "subtitle",
                  "Price",
                ));
              },
            ),
          )
        ],
      ),
    );
  }
}
