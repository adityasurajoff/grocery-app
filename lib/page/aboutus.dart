import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("About OnlineStore"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 200,
              width: size.width,
              color: Colors.purple,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TyperAnimatedTextKit(
                    speed: Duration(milliseconds: 200),
                    text: ["OnlineStore"],
                    textStyle: TextStyle(
                        fontSize: 44,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  TyperAnimatedTextKit(
                    speed: Duration(milliseconds: 100),
                    text: ["Get Your Needs At Your Doorstep"],
                    textStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              child: Column(
                children: <Widget>[
                  aboutItem(size, title: "Best and quality tested product"),
                  aboutItem(size,
                      title: "Get your product your doorstep on given time"),
                  aboutItem(size, title: "Live tracking of your products")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget aboutItem(Size size, {String title}) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Icon(Icons.arrow_forward),
      Container(
        width: size.width - 40,
        child: Text(
          title == null ? "empty" : title,
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
        ),
      ),
    ],
  );
}
