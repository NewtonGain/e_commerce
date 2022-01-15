import 'package:flutter/material.dart';
import '../../../constant.dart';
import '../../../models/product.dart';
// import 'add_to_cart.dart';
// import 'color_and_size.dart';
// import 'counter_with_fav_btn.dart';
// import 'description.dart';
// import 'product_title_with_image.dart';

class Body extends StatelessWidget {
  final Color color;
  final String title;
  final String description;
  final int price;
  final String author;
  final String category;
  final String publication_date;
  final String image;
  Body({
    required this.color,
    required this.title,
    required this.image,
    required this.description,
    required this.price,
    required this.author,
    required this.category,
    required this.publication_date,
  });
  //List<Product> _body_list = body_list;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
                primary: Colors.orange,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
              ),
              onPressed: () {},
              child: Text(
                "Buy Now",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
                primary: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
              ),
              onPressed: () {},
              child: Text(
                "Add To Cart",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 5),
              // child: Text(price.toString()),
              //width: double.infinity,
              height: 380,
              decoration: BoxDecoration(
                  //color: color,
                  image: DecorationImage(
                      image: NetworkImage(image), fit: BoxFit.cover)),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Column(
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 12.0),
                          child: Text(
                            "\$${price.toString()}",
                            style: TextStyle(
                              fontSize: 22.0,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.favorite_border,
                                  color: Colors.grey,
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.share,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 12.0),
                    child: Row(
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Icon(
                                Icons.star_rate_sharp,
                                color: Colors.amber,
                              ),
                              Icon(
                                Icons.star_rate_sharp,
                                color: Colors.amber,
                              ),
                              Icon(
                                Icons.star_rate_sharp,
                                color: Colors.amber,
                              ),
                              Icon(
                                Icons.star_rate_sharp,
                                color: Colors.amber,
                              ),
                              Icon(
                                Icons.star_border_outlined,
                                color: Colors.amber,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 12.0,
                        ),
                        Text('4.4')
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                color: Colors.redAccent,
              ),
              margin: EdgeInsets.all(10.0),
              padding: EdgeInsets.all(15.0),
              // color: Colors.redAccent,
              child: Text(
                "Book Title - ${title}",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                color: Colors.cyanAccent,
              ),
              margin: EdgeInsets.all(10.0),
              padding: EdgeInsets.all(15.0),
              //color: Colors.cyanAccent,
              child: Text(
                "Category - ${category}",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                color: Colors.grey,
              ),
              margin: EdgeInsets.all(10.0),
              padding: EdgeInsets.all(15.0),
              // color: Colors.grey,
              child: Text(
                "Author Name - ${author}",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                color: Colors.black26,
              ),
              margin: EdgeInsets.all(10.0),
              padding: EdgeInsets.all(15.0),
              // color: Colors.black26,
              child: Text(
                "Publication Date - ${publication_date}",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                color: Colors.pink[100],
              ),
              margin: EdgeInsets.all(10.0),
              padding: EdgeInsets.all(15.0),
              // color: Colors.pinkAccent,
              child: Text(
                "Description - ${description}",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: Colors.black),
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
