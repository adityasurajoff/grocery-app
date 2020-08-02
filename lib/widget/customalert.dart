import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

customAlert(context) {
  showDialog(
      context: context,
      child: Container(
        child: Center(
          child: Container(
            width: 260,
            height: 160,
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              border: Border.all(width: 0, color: Colors.purple),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SpinKitPulse(
                      color: Colors.purple,
                    ),
                    SizedBox(width: 8),
                    Container(
                      width: 184,
                      child: Text(
                        "Alert Title ",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.none,
                          color: Colors.black,
                          fontFamily: "serif",
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "go here Alert Title will go here Alert Title will go here Alert Title will go here ",
                    style: TextStyle(
                      fontSize: 15,
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontFamily: "serif",
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ));
}
