import 'package:flutter/material.dart';
import 'package:livestore/widget/drawer.dart';

class WalletPage extends StatefulWidget {
  @override
  _WalletPageState createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Wallet"),
      ),
      drawer: CustomDrawer(),
      body: Container(
          height: size.height,
          color: Colors.purple.withOpacity(0.1),
          child: Stack(
            fit: StackFit.loose,
            children: <Widget>[
              Container(
                height: 160,
                color: Colors.purple,
              ),
              Container(
                height: 220,
                margin: EdgeInsets.symmetric(horizontal: 30, vertical: 40),
                padding: EdgeInsets.symmetric(vertical: 6, horizontal: 6),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.account_balance_wallet,
                          size: 58,
                          color: Colors.purple,
                        ),
                        SizedBox(width: 4),
                        Text(
                          "Wallet",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 32,
                              color: Colors.purple),
                        )
                      ],
                    ),
                    SizedBox(height: 4),
                    Text(
                      "Wallet Id: 546546546654",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.purple),
                    ),
                    SizedBox(height: 4),
                    Text(
                      "Balance: ₹620",
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        RaisedButton(
                          elevation: 0,
                          color: Colors.purple,
                          child: Text(
                            "Send Money",
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () {},
                        ),
                        RaisedButton(
                          elevation: 0,
                          color: Colors.purple,
                          child: Text(
                            "Add Money",
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () {},
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
