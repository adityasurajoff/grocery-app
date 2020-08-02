import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:livestore/widget/commentcard.dart';
import 'package:livestore/widget/customalert.dart';
import 'package:livestore/widget/loading.dart';

class ProdcutViewPage extends StatefulWidget {
  @override
  _ProdcutViewPageState createState() => _ProdcutViewPageState();
}

class _ProdcutViewPageState extends State<ProdcutViewPage> {
  int _itemcount = 1;

  int _carouselPosition = 0;
  List _imgList = ["Fas", "Fasdf"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Prodcut View Page"),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CarouselSlider(
                height: 240,
                viewportFraction: 1.0,
                autoPlay: true,
                items: [
                  Image.asset(
                    "assets/carousel.jpg",
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    "assets/carousel2.jpg",
                    fit: BoxFit.cover,
                  ),
                ],
                onPageChanged: (pos) {
                  setState(() {
                    _carouselPosition = pos;
                  });
                },
              ),
              SizedBox(height: 8),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: _imgList.map((e) {
                    return Container(
                        height: 10,
                        width: 10,
                        margin: EdgeInsets.only(left: 8),
                        decoration: BoxDecoration(
                            color: e == _imgList.elementAt(_carouselPosition)
                                ? Colors.transparent
                                : Colors.grey,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(width: 1, color: Colors.grey)));
                  }).toList()),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Product Name will Go here",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "2kg of prodcut information ",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.directions_car,
                          color: Colors.green,
                        ),
                        Text(
                          " Delivery Charge 20",
                          style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          height: 32,
                          width: 84,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Row(
                              children: <Widget>[
                                InkWell(
                                  child: Container(
                                    width: 28,
                                    color: Colors.purple,
                                    child: Center(
                                      child: Icon(
                                        Icons.remove,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  onTap: () {
                                    if (_itemcount > 1) {
                                      setState(() {
                                        _itemcount -= 1;
                                      });
                                    }
                                  },
                                ),
                                Container(
                                  width: 28,
                                  color: Colors.white,
                                  child: Center(
                                    child: Text(
                                      "$_itemcount",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  child: Container(
                                    width: 28,
                                    color: Colors.purple,
                                    child: Center(
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  onTap: () {
                                    setState(() {
                                      _itemcount += 1;
                                    });
                                  },
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        RaisedButton(
                            color: Colors.purple,
                            child: Text(
                              "Add To Cart",
                              style: TextStyle(color: Colors.white),
                            ),
                            onPressed: () {
                              customAlert(context);
                            })
                      ],
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Customer's Review",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    CommentCard(),
                    CommentCard(),
                    CommentCard(),
                    CommentCard(),
                    CommentCard(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
