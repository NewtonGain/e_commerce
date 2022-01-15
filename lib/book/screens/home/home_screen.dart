import 'package:e_commerce/book/constant.dart';
import 'package:flutter/material.dart';

import 'components/body.dart';
import 'components/cs.dart';
import 'components/poem.dart';
import 'components/science.dart';
import 'components/stroy.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      initialIndex: 0,
      child: Scaffold(
        appBar: buildAppBar(),
        body: TabBarView(
          children: [Body(), Cs(), Story(), Science(), Poem()],
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      bottom: TabBar(
        padding: EdgeInsets.all(5),
        labelColor: Colors.black,
        unselectedLabelColor: Colors.white,
        tabs: [
          Tab(
            child: Text(
              "All Books",
              textAlign: TextAlign.center,
            ),
          ),
          Tab(
            child: Text(
              "CSE Books",
              textAlign: TextAlign.center,
            ),
          ),
          Tab(
            child: Text(
              "Story Books",
              textAlign: TextAlign.center,
            ),
          ),
          Tab(
            child: Text(
              "Science Books",
              textAlign: TextAlign.center,
            ),
          ),
          Tab(
            child: Text(
              "Poems Books",
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
      backgroundColor: Colors.grey,
      elevation: 0,
      leading: IconButton(
        icon: Icon(Icons.arrow_left),
        onPressed: () {},
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.search),
          color: cTextColor,
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.card_giftcard),
          color: cTextColor,
        ),
        const SizedBox(
          width: cDefaultPadding / 2,
        ),
      ],
      title: Text(
        "Ecommerce App",
        style: TextStyle(
            color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
      ),
      centerTitle: true,
    );
  }
}
