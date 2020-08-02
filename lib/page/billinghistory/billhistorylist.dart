import 'package:flutter/material.dart';

class BillHistoryListPage extends StatefulWidget {
  @override
  _BillHistoryListPageState createState() => _BillHistoryListPageState();
}

class _BillHistoryListPageState extends State<BillHistoryListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Billing History"),
      ),
    );
  }
}
