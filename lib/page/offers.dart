import 'package:flutter/material.dart';

class OffersPage extends StatefulWidget {
  @override
  _OffersPageState createState() => _OffersPageState();
}

class _OffersPageState extends State<OffersPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Offers Page"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            dateBanner(size),
            Container(
              margin: EdgeInsets.symmetric(vertical: 4, horizontal: 6),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image(image: AssetImage("assets/carousel.jpg")),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 4, horizontal: 6),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image(image: AssetImage("assets/carousel2.jpg")),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 4, horizontal: 6),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image(image: AssetImage("assets/carousel.jpg")),
              ),
            ),
            dateBanner(size),
            Container(
              margin: EdgeInsets.symmetric(vertical: 4, horizontal: 6),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image(image: AssetImage("assets/carousel.jpg")),
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget dateBanner(size) {
  return Container(
    height: 60,
    width: size.width,
    child: Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Align(
          alignment: Alignment.center,
          child: Divider(
            thickness: 2,
            color: Colors.purple,
          ),
        ),
        Positioned(
          left: 20,
          top: 6,
          child: Chip(
              backgroundColor: Colors.purple,
              label: Text(
                "Today's offer",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              )),
        )
      ],
    ),
  );
}
