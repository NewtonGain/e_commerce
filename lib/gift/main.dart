import 'package:e_commerce/gift/constants.dart';
import 'package:e_commerce/gift/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Gift());
}

class Gift extends StatelessWidget {
  const Gift({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gift Items',
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const HomeScreen(),
    );
  }
}
