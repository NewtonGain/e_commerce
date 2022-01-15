import 'package:e_commerce/ornament/models/product.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class Description extends StatelessWidget {
  Description({
    this.product,
  });

  final Product? product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: Text(
        product!.description!,
        style: TextStyle(height: 1.5),
      ),
    );
  }
}
