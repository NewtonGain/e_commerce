import 'package:e_commerce/ornament/constants.dart';
import 'package:e_commerce/ornament/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Ornament());
}

class Ornament extends StatelessWidget {
  const Ornament({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ORNAMENTS',
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const HomeScreen(),
    );
  }
}
