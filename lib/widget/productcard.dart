import 'package:flutter/material.dart';

Widget productcard(Size size) {
  return Container(
    height: 180,
    margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
    decoration: BoxDecoration(
      color: Colors.purple.withOpacity(0.05),
      borderRadius: BorderRadius.circular(10),
      border: Border.all(width: 0, color: Colors.purple),
    ),
    child: Row(
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            bottomLeft: Radius.circular(10),
          ),
          child: Image.asset(
            "assets/carousel.jpg",
            height: 220,
            width: 140,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          padding: EdgeInsets.all(6),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: size.width - 168,
                child: Text(
                  "The product title will go here if too long it will show ellipsis",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 4),
              Text(
                "Amount: 2kg",
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.purple),
              ),
              SizedBox(height: 4),
              Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.purple,
                    ),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.star_half,
                          color: Colors.white,
                        ),
                        Text(
                          "4.1",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Text("60656 persons")
                ],
              ),
              SizedBox(height: 4),
              Container(
                width: size.width - 168,
                child: Text(
                  "Small description about product will go here to read full information about porduct click on product view page to view all about procutt",
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                ),
              )
            ],
          ),
        )
      ],
    ),
  );
}
