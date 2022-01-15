import 'package:e_commerce/book/constant.dart';
import 'package:e_commerce/book/models/product.dart';
import 'package:flutter/material.dart';

import 'components/body.dart';

class DetailsScreen extends StatelessWidget {
  //Product product;
  final int ids;

  DetailsScreen({required this.ids});
  //List product_list = [];
  List<Product> _products = products;
  late String _title;
  late String _publication_date;
  late String _author;
  late String _category;
  late int _price;
  late Color _color;
  late String _description;
  late String _image;
  @override
  Widget build(BuildContext context) {
    _products.forEach((element) {
      if (element.id == ids) {
        _image = element.image;
        _title = element.title;
        _price = element.price;
        _description = element.description;
        _author = element.author;
        _category = element.category;
        _publication_date = element.publication_date;
        _color = element.color;
      }
    });
    return Scaffold(
      backgroundColor: _color,
      appBar: buildAppBar(context),
      body: Body(
        title: _title,
        image: _image,
        price: _price,
        description: _description,
        author: _author,
        category: _category,
        publication_date: _publication_date,
        color: _color,
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: _color,
      elevation: 0,
      leading: IconButton(
        onPressed: () => Navigator.pop(context),
        icon: Image.asset("assets/icons/back.png"),
      ),
      actions: [
        IconButton(
            onPressed: () {}, icon: Image.asset("assets/icons/search.png")),
        IconButton(
            onPressed: () {}, icon: Image.asset("assets/icons/cart.png")),
        SizedBox(
          width: cDefaultPadding / 2,
        )
      ],
    );
  }
}
