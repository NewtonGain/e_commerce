import 'package:e_commerce/book/constant.dart';
import 'package:e_commerce/book/models/product.dart';
import 'package:e_commerce/book/screens/home/components/item_card.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return Column(
    //   crossAxisAlignment: CrossAxisAlignment.start,
    //   children: [
    //     Padding(
    //       padding: const EdgeInsets.symmetric(horizontal: cDefaultPadding),
    //       child: Text(
    //         "Books",
    //         style: Theme.of(context)
    //             .textTheme
    //             .headline5!
    //             .copyWith(fontWeight: FontWeight.bold),
    //       ),
    //     ),
    // Categories(),
    return Container(
      margin: EdgeInsets.only(top: 7, bottom: 5),
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: cDefaultPadding),
              child: GridView.builder(
                itemCount: products.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.75,
                  mainAxisSpacing: cDefaultPadding,
                  crossAxisSpacing: cDefaultPadding,
                ),
                itemBuilder: (context, index) => ItemCard(
                  product: products[index],
                  // press: () => Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //       builder: (context) => DetailsScreen(
                  //         product: products[id],
                  //       ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
