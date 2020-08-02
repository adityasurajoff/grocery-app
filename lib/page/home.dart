import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:koukicons/businessContact.dart';
import 'package:koukicons/clapperboard.dart';
import 'package:koukicons/newspaper.dart';
import 'package:koukicons/notebook2.dart';
import 'package:livestore/page/cart.dart';
import 'package:livestore/page/notification.dart';
import 'package:livestore/page/productlist.dart';
import 'package:livestore/widget/servicecard.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Row(children: <Widget>[
          Text("OnlineStore"),
          Spacer(),
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return NotificationPage();
              }));
            },
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return CartPage();
              }));
            },
          ),
        ]),
        leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            }),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: 120,
                  color: Colors.purple,
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: CarouselSlider(
                      viewportFraction: 0.9,
                      autoPlay: true,
                      height: 180,
                      items: [
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              "assets/carousel.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              "assets/carousel2.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ]),
                ),
              ],
            ),
            SizedBox(height: 24),
            Text(
              "Our Services",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 4),
            Wrap(
              children: <Widget>[
                InkWell(
                  child: serviceCard(
                    title: "Dairy \nProducts",
                    iconwidget: KoukiconsBusinessContact(),
                  ),
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return ProductListPage();
                    }));
                  },
                ),
                serviceCard(
                  title: "Grocery",
                  iconwidget: KoukiconsClapperboard(),
                ),
                serviceCard(
                  title: "Newspaper",
                  iconwidget: KoukiconsNewspaper(),
                ),
                serviceCard(
                  title: "Stationary",
                  iconwidget: KoukiconsNotebook2(),
                )
              ],
            ),
            SizedBox(height: 16),
            Container(
              height: 200,
              width: size.width,
              color: Colors.purple.withOpacity(0.1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "OnlineStore",
                    style: TextStyle(fontSize: 44, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Get Your Needs At Your Doorstep",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
