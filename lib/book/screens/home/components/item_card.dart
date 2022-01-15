import 'package:e_commerce/book/screens/details/details_screen.dart';
import 'package:flutter/material.dart';
import '../../../constant.dart';
import '../../../models/product.dart';

class ItemCard extends StatelessWidget {
  final Product product;

  const ItemCard({
    required this.product,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => DetailsScreen(ids: product.id)));
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(cDefaultPadding / 2),
              decoration: BoxDecoration(
                color: product.color,
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: Image.network(product.image),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: cDefaultPadding / 4),
            child: Text(
              product.title,
              style: const TextStyle(color: cTextLightColor),
            ),
          ),
          Text(
            "\$${product.price}",
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
