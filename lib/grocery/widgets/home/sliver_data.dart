import 'package:e_commerce/grocery/models/product_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../product_card.dart';

class SliverProduct extends StatelessWidget {
  const SliverProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _provider = Provider.of<ProductProvider>(context);
    final _product = _provider.products;
    return SliverGrid(
      delegate: SliverChildBuilderDelegate(
        (context, index) => ProductCard(
          imageHeight: _provider.imageHeight,
          productName: _product[index].name,
          brandName: _product[index].brandName,
          price: _product[index].price,
          discount: _product[index].discount,
          imageUrl: _product[index].imageUrl,
        ),
        childCount: _product.length,
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: _provider.crossAxisCounts,
        mainAxisSpacing: 5,
        crossAxisSpacing: 5,
        mainAxisExtent: _provider.expandedHeight,
      ),
    );
  }
}
