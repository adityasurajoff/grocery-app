import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class NotificationPage extends StatefulWidget {
  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notifications"),
      ),
      body: Container(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: ListView.builder(
              itemCount: 6,
              itemBuilder: (context, index) {
                return notificationCard();
              })),
    );
  }
}

Widget notificationCard() {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 4),
    padding: EdgeInsets.symmetric(horizontal: 6, vertical: 6),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      color: Colors.purple.withOpacity(0.1),
      border: Border.all(width: 0, color: Colors.purple),
    ),
    child: Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Icon(Icons.notifications),
            SizedBox(width: 8),
            Text("Notification Title",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ))
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 6),
          child: Image.asset("assets/carousel.jpg"),
        ),
        Text(
          "Notification text will go here Notification text will go hereNotification text will go hereNotification text will go hereNotification text will go hereNotification text will go here",
          style: TextStyle(fontSize: 14),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Text(
            "6 days ago",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        )
      ],
    ),
  );
}
