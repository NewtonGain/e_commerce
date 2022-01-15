import 'package:e_commerce/book/constant.dart';
import 'package:e_commerce/book/models/product.dart';
import 'package:e_commerce/book/screens/home/components/item_card.dart';
import 'package:flutter/material.dart';

class Story extends StatelessWidget {
  const Story({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List category_list = [];
    Iterable<Product> _product =
        products.where((element) => element.category == 'Story Book');

    //products.forEach((element) {});
    return Container(
      margin: EdgeInsets.only(top: 7, bottom: 5, left: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: cDefaultPadding, vertical: cDefaultPadding),
                child: GridView.count(
                  padding: const EdgeInsets.only(left: 15),
                  crossAxisCount: 2,
                  children: [
                    ..._product.map((e) {
                      return ItemCard(product: e);
                    }).toList(),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
