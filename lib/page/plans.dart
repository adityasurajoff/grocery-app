import 'package:flutter/material.dart';
import 'package:koukicons/businessContact.dart';
import 'package:koukicons/clapperboard.dart';
import 'package:koukicons/connectedNetwork.dart';
import 'package:koukicons/liveNews.dart';
import 'package:koukicons/newspaper.dart';
import 'package:koukicons/notebook1.dart';
import 'package:koukicons/notebook2.dart';
import 'package:livestore/page/planview.dart';
import 'package:livestore/widget/drawer.dart';
import 'package:livestore/widget/servicecard.dart';

class PlansPage extends StatefulWidget {
  @override
  _PlansPageState createState() => _PlansPageState();
}

class _PlansPageState extends State<PlansPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        title: Text("Plans"),
      ),
      body: Column(
        children: <Widget>[
          Container(
            width: size.width,
            margin: EdgeInsets.symmetric(horizontal: 6, vertical: 6),
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(color: Colors.purple.withOpacity(0.1)),
            child: Text(
              "Select category from our services to see our plans detail",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
            ),
          ),
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
                    return PlansViewPage("Dairy Products");
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
          )
        ],
      ),
    );
  }
}
