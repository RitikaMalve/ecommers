import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {
  final String? title;
  final String? image;
  final String? tag;

  const CategoryPage({Key? key, this.title, this.image, this.tag})
      : super(key: key);

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Hero(
              tag: widget.tag!,
              child: Material(
                child: Container(
                  height: 360,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(widget.image!), fit: BoxFit.cover)),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.bottomRight,
                            colors: [
                          Colors.black.withOpacity(.8),
                          Colors.black.withOpacity(.1),
                        ])),
                    child: Column(
                      children: <Widget>[
                        // SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            IconButton(
                              icon: Icon(
                                Icons.arrow_back_ios,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                FadeInUp(
                                    duration: Duration(milliseconds: 1200),
                                    child: IconButton(
                                      icon: Icon(
                                        Icons.search,
                                        color: Colors.white,
                                      ),
                                      onPressed: () {},
                                    )),
                                FadeInUp(
                                    duration: Duration(milliseconds: 1200),
                                    child: IconButton(
                                      icon: Icon(
                                        Icons.favorite,
                                        color: Colors.white,
                                      ),
                                      onPressed: () {},
                                    )),
                                FadeInUp(
                                    duration: Duration(milliseconds: 1300),
                                    child: IconButton(
                                      icon: Icon(
                                        Icons.shopping_cart,
                                        color: Colors.white,
                                      ),
                                      onPressed: () {},
                                    )),
                              ],
                            ),
                          ],
                        ),
                        
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: <Widget>[
                  FadeInUp(
                      duration: Duration(milliseconds: 1400),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "New Product",
                            style: TextStyle(
                                color: Color(0xFF9F5766),
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                "View More",
                                style: TextStyle(color: Color(0xFF9F5766)),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 11,
                                color: Color(0xFF9F5766),
                              )
                            ],
                          ),
                        ],
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  FadeInUp(
                      duration: Duration(milliseconds: 1500),
                      child: makeProduct(
                        image: 'assets/images/mans.png',
                        title: 'Panelled clest',
                        price: '190\$',
                      )),
                  FadeInUp(
                      duration: Duration(milliseconds: 1600),
                      child: makeProduct(
                          image: 'assets/images/mantwo.png',
                          title: 'Regal Shoes',
                          price: '165\$')),
                  FadeInUp(
                      duration: Duration(milliseconds: 1700),
                      child: makeProduct(
                          image: 'assets/images/mantree.png',
                          title: 'Formal Shoes',
                          price: '100\$')),
                  FadeInUp(
                      duration: Duration(milliseconds: 1800),
                      child: makeProduct(
                          image: 'assets/images/manfor.png',
                          title: 'Balance Shoes',
                          price: '150\$')),
                  FadeInUp(
                      duration: Duration(milliseconds: 1900),
                      child: makeProduct(
                          image: 'assets/images/manfive.png',
                          title: 'formal shoes',
                          price: '200\$')),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget makeProduct({image, title, price, }) {
    return Container(
        height: 200,
        width: double.infinity,
        margin: EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image:
                DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
                Colors.black.withOpacity(.8),
                Colors.black.withOpacity(.1),
              ])),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              FadeInUp(
                  duration: Duration(milliseconds: 1400),
                  child: Align(
                    alignment: Alignment.topRight,
                   
                    child: IconButton(
                      alignment: Alignment.topRight,
                      icon: isFavorite
                          ? Icon(Icons.favorite, color: Colors.red)
                          : Icon(Icons.favorite_border, color: Colors.white),
                      onPressed: () {
                        setState(() {
                          isFavorite = !isFavorite;
                        });
                      },
                    ),
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      FadeInUp(
                          duration: Duration(milliseconds: 1500),
                          child: Text(
                            title,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontFamily: "PlayfairDisplay"),
                          )),
                      FadeInUp(
                          duration: Duration(milliseconds: 1500),
                          child: Text(
                            price,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          )),
                    ],
                  ),
                  FadeInUp(
                      duration: Duration(milliseconds: 2000),
                      child: Container(
                          width: 40,
                          height: 40,
                          margin: EdgeInsets.only(bottom: 10),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.white),
                          child: Center(
                            child: Icon(
                              Icons.add_shopping_cart,
                              size: 18,
                              color: Colors.grey[700],
                            ),
                          )))
                ],
              ),
            ],
          ),
        ));
  }
}
