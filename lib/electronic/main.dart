import 'package:e_commerce/electronic/models/product_list.dart';
import 'package:e_commerce/electronic/widgets/home/home_main_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'widgets/details/details_main.dart';

void main() {
  runApp(Electronics());
}

class Electronics extends StatefulWidget {
  const Electronics({Key? key}) : super(key: key);

  @override
  State<Electronics> createState() => _ElectronicsState();
}

class _ElectronicsState extends State<Electronics> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: ProductProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
        routes: {
          '/product-details': (context) => const ProductDetailsPage(),
        },
      ),
    );
  }
}
