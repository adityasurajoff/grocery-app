import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:livestore/page/home.dart';
import 'package:livestore/page/plans.dart';
import 'package:livestore/page/schedule.dart';
import 'package:livestore/page/support.dart';
import 'package:livestore/page/wallet.dart';
import 'package:livestore/widget/drawer.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(systemNavigationBarColor: Colors.purple));
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MainPage(),
    theme: ThemeData(primarySwatch: Colors.purple),
  ));
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  TextStyle _navigationBarItemStyle = TextStyle(color: Colors.white);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      body: [
        HomePage(),
        SchedulePage(),
        WalletPage(),
        PlansPage(),
        SupportPage()
      ].elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.purple,
        selectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                style: _navigationBarItemStyle,
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.calendar_today,
                color: Colors.white,
              ),
              title: Text(
                "Schedule",
                style: _navigationBarItemStyle,
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.account_balance_wallet,
                color: Colors.white,
              ),
              title: Text(
                "Wallet",
                style: _navigationBarItemStyle,
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.assignment,
                color: Colors.white,
              ),
              title: Text(
                "Plans",
                style: _navigationBarItemStyle,
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.headset_mic,
                color: Colors.white,
              ),
              title: Text(
                "Support",
                style: _navigationBarItemStyle,
              ))
        ],
        currentIndex: _selectedIndex,
        onTap: (i) {
          setState(() {
            _selectedIndex = i;
          });
        },
      ),
    );
  }
}
