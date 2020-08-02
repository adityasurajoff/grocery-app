import 'package:flutter/material.dart';
import 'package:livestore/page/aboutus.dart';
import 'package:livestore/page/contactus.dart';
import 'package:livestore/page/offers.dart';

class CustomDrawer extends Drawer {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width / 2 + 60,
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 220,
              color: Colors.purple,
              child: Center(
                child: Text(
                  "OnlineStore",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 34,
                      color: Colors.white),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.history,
                size: 28,
              ),
              title: Text(
                "Billing History",
                style: TextStyle(fontSize: 16),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.local_offer,
                size: 28,
              ),
              title: Text(
                "Offers",
                style: TextStyle(fontSize: 16),
              ),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return OffersPage();
                }));
              },
            ),
            ListTile(
              leading: Icon(
                Icons.call,
                size: 28,
              ),
              title: Text(
                "Contact Us",
                style: TextStyle(fontSize: 16),
              ),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return ContactUsPage();
                }));
              },
            ),
            ListTile(
              leading: Icon(
                Icons.info,
                size: 28,
              ),
              title: Text(
                "About Us",
                style: TextStyle(fontSize: 16),
              ),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return AboutUsPage();
                }));
              },
            ),
            ListTile(
              leading: Icon(
                Icons.exit_to_app,
                size: 28,
              ),
              title: Text(
                "Logout",
                style: TextStyle(fontSize: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
              child: Text(
                "More...",
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            Divider(
              indent: 26,
              // endIndent: 16,
              thickness: 2,
              height: 8,
              color: Colors.purple,
            ),
            ListTile(
              leading: Icon(
                Icons.share,
                size: 28,
              ),
              title: Text(
                "Share",
                style: TextStyle(fontSize: 16),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.apps,
                size: 28,
              ),
              title: Text(
                "Apps By Aditya Suraj",
                style: TextStyle(fontSize: 16),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.rate_review,
                size: 28,
              ),
              title: Text(
                "Rate App",
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
