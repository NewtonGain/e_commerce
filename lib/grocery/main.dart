import 'package:e_commerce/book/main.dart';
import 'package:e_commerce/electronic/main.dart';
import 'package:e_commerce/furniture/main.dart';
import 'package:e_commerce/gift/main.dart';
import 'package:e_commerce/ornament/main.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'models/product_list.dart';
import 'widgets/home/sliver_adaptor.dart';
import 'widgets/home/sliver_data.dart';

void main() {
  runApp(Grocery());
}

class Grocery extends StatefulWidget {
  const Grocery({Key? key}) : super(key: key);

  @override
  State<Grocery> createState() => _GroceryState();
}

class _GroceryState extends State<Grocery> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: ProductProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: CustomScrollView(
            slivers: [
              SliverAppBar(
                actions: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.work_outline),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.person),
                  ),
                ],
                backgroundColor: Color(0xFF042925),
                title: Text('E-Shop'),
                centerTitle: true,
                pinned: true,
                expandedHeight: 120,
                flexibleSpace: FlexibleSpaceBar(
                  background: Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.only(
                        top: 80.0, bottom: 20.0, left: 10.0, right: 10.0),
                    child: TextField(
                      style: TextStyle(color: Colors.white, letterSpacing: 2.0),
                      decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.search,
                            color: Colors.white,
                            size: 20,
                          ),
                          contentPadding: EdgeInsets.only(left: 10.0),
                          filled: true,
                          focusColor: Colors.white,
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.white, width: 2),
                              borderRadius: BorderRadius.circular(26.0)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xFFf9f7f7), width: 1.0),
                              borderRadius: BorderRadius.circular(26.0))),
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 10.0),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              TextButton(
                                onPressed: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Grocery())),
                                child: const Text(
                                  'Grocery',
                                  style: TextStyle(
                                      fontSize: 15,
                                      letterSpacing: 1,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                                child: Text('/',
                                    style: TextStyle(
                                        fontSize: 15,
                                        letterSpacing: 1,
                                        fontWeight: FontWeight.bold)),
                              ),
                              TextButton(
                                onPressed: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Books())),
                                child: const Text('Books',
                                    style: TextStyle(
                                        fontSize: 15,
                                        letterSpacing: 1,
                                        fontWeight: FontWeight.bold)),
                              ),
                              SizedBox(
                                width: 5,
                                child: Text('/',
                                    style: TextStyle(
                                        fontSize: 15,
                                        letterSpacing: 1,
                                        fontWeight: FontWeight.bold)),
                              ),
                              TextButton(
                                onPressed: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Furniture())),
                                child: Text('Furniture',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold)),
                              ),
                              SizedBox(
                                width: 5,
                                child: Text('/',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold)),
                              ),
                              TextButton(
                                onPressed: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Gift())),
                                child: Text(' Gift ',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold)),
                              ),
                              SizedBox(
                                width: 10,
                                child: Text('/',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold)),
                              ),
                              TextButton(
                                onPressed: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Ornament())),
                                child: Text(' Ornament ',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold)),
                              ),
                              SizedBox(
                                width: 5,
                                child: Text('/',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold)),
                              ),
                              TextButton(
                                onPressed: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Electronics())),
                                child: Text('Electronics',
                                    style: TextStyle(
                                        fontSize: 15,
                                        letterSpacing: 1,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              HomeSliverAdapter(),
              SliverProduct()
            ],
          ),
          endDrawer: Drawer(
            child: ListView(
              children: [],
            ),
          ),
          //body: ProductCard(),
        ),
        // routes: {
        //   '/': (context) => ProductCard(),
        // },
      ),
    );
  }
}
