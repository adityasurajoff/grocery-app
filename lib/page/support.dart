import 'package:flutter/material.dart';
import 'package:livestore/widget/drawer.dart';

class SupportPage extends StatefulWidget {
  @override
  _SupportPageState createState() => _SupportPageState();
}

class _SupportPageState extends State<SupportPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Support"),
      ),
      drawer: CustomDrawer(),
      body: Column(
        children: <Widget>[
          ExpansionTile(
            title: Text("How OnlineStore Works?"),
            children: <Widget>[
              Container(
                  width: size.width,
                  padding: EdgeInsets.symmetric(
                    vertical: 4,
                    horizontal: 8,
                  ),
                  decoration: BoxDecoration(
                      color: Colors.purple.withOpacity(0.05),
                      border: Border.all(color: Colors.purple, width: 0)),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.arrow_forward,
                        size: 18,
                      ),
                      Text(
                        "flas dad fk ajhdslkf ashdljkh",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ))
            ],
          ),
          ExpansionTile(
            title: Text("How OnlineStore Works"),
            children: <Widget>[Text("flas dad fk ajhdslkf ashdljkh")],
          ),
          ExpansionTile(
            title: Text("How OnlineStore Works"),
            children: <Widget>[Text("flas dad fk ajhdslkf ashdljkh")],
          ),
          ExpansionTile(
            title: Text("How OnlineStore Works"),
            children: <Widget>[Text("flas dad fk ajhdslkf ashdljkh")],
          ),
          Chip(
              label: Text(
            "FAQ",
            style: TextStyle(fontWeight: FontWeight.bold),
          ))
        ],
      ),
    );
  }
}
