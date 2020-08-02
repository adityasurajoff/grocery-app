import 'package:flutter/material.dart';
import 'package:livestore/widget/drawer.dart';

class PlansViewPage extends StatefulWidget {
  final String planname;
  PlansViewPage(this.planname);
  @override
  _PlansViewPageState createState() => _PlansViewPageState();
}

class _PlansViewPageState extends State<PlansViewPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.planname} Plans"),
      ),
      drawer: CustomDrawer(),
      body: Container(
        child: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
              return plansCard(size);
            }),
      ),
    );
  }
}

Widget plansCard(Size size) {
  return Container(
    // height: 140,
    width: size.width,
    margin: EdgeInsets.symmetric(horizontal: 6, vertical: 4),
    padding: EdgeInsets.symmetric(horizontal: 6, vertical: 6),
    decoration: BoxDecoration(
        border: Border.all(color: Colors.purple),
        color: Colors.purple.withOpacity(0.05),
        borderRadius: BorderRadius.circular(5)),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "Plan Name will go here, Plan Name will go here",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        SizedBox(height: 6),
        Image(image: AssetImage("assets/carousel.jpg")),
        SizedBox(height: 6),
        Row(
          children: <Widget>[
            Text(
              "Validity: 14days",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Colors.purple),
            ),
            SizedBox(width: 14),
            Text(
              "Price: 560",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Colors.green),
            )
          ],
        ),
        SizedBox(height: 6),
        ExpansionTile(
          title: Text("Full Plan Details"),
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(horizontal: 6, vertical: 6),
              width: size.width,
              decoration: BoxDecoration(
                color: Colors.purple.withOpacity(0.1),
                border: Border.all(width: 0, color: Colors.purple),
                borderRadius: BorderRadius.circular(0),
              ),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.arrow_forward,
                        size: 16,
                      ),
                      Text("Price of plan include delivery charge too")
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.arrow_forward,
                        size: 16,
                      ),
                      Text("Delivery Notification")
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.arrow_forward,
                        size: 14,
                      ),
                      Text("Flexible Timing")
                    ],
                  )
                ],
              ),
            )
          ],
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: RaisedButton(
              child: Text(
                "Subscribe",
                style: TextStyle(color: Colors.white),
              ),
              elevation: 0,
              color: Colors.purple,
              onPressed: () {}),
        )
      ],
    ),
  );
}
