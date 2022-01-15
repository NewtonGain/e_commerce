import 'package:e_commerce/furniture/widgets/home_page.dart';
import 'package:flutter/material.dart';

int main() {
  runApp(Furniture());
  return 0;
}

class Furniture extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Products List",
      home: HomePage(),
    );
  }
}
