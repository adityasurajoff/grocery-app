import 'package:flutter/material.dart';
import 'package:livestore/page/prouctview.dart';
import 'package:livestore/widget/cartitemcard.dart';
import 'package:livestore/widget/drawer.dart';
import 'package:livestore/widget/productcard.dart';

class ProductListPage extends StatefulWidget {
  @override
  _ProductListPageState createState() => _ProductListPageState();
}

class _ProductListPageState extends State<ProductListPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Dairy Products"),
      ),
      drawer: CustomDrawer(),
      body: Container(
        child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return InkWell(
              child: productcard(size),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return ProdcutViewPage();
                }));
              },
            );
          },
        ),
      ),
    );
  }
}
