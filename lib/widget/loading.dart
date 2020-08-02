import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

loadingDialog(context) {
  showDialog(
      barrierDismissible: false,
      context: context,
      child: Container(
        child: Center(
          child: Container(
            height: 130,
            width: 130,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(width: 0, color: Colors.purple),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SpinKitCircle(
                  color: Colors.purple,
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "Processing",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    fontFamily: "serif",
                    color: Colors.purple,
                    decoration: TextDecoration.none,
                  ),
                )
              ],
            ),
          ),
        ),
      ));
}
