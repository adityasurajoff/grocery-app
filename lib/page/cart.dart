import 'package:flutter/material.dart';
import 'package:livestore/widget/cartitemcard.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart"),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.view_compact,
                color: Colors.white,
              ),
              onPressed: () {})
        ],
      ),
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return CartItemCard();
          }),
    );
  }
}
