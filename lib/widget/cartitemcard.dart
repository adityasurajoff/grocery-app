import 'package:flutter/material.dart';

class CartItemCard extends StatefulWidget {
  @override
  _CartItemCardState createState() => _CartItemCardState();
}

class _CartItemCardState extends State<CartItemCard> {
  int _itemcount = 1;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 6, vertical: 4),
      height: 126,
      decoration: BoxDecoration(
        color: Colors.purple.withOpacity(0.1),
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
            child: Image(
              image: AssetImage("assets/carousel.jpg"),
              height: 126,
              width: 120,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            width: size.width - 132,
            padding: EdgeInsets.symmetric(horizontal: 6, vertical: 4),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text(
                  "Cart Item Heading Cart Item Heading Cart Item Heading",
                  textAlign: TextAlign.start,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 4),
                Row(
                  children: <Widget>[
                    Text(
                      "Price: 60 /-",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                    SizedBox(width: 12),
                    Container(
                      height: 24,
                      width: 72,
                      decoration: BoxDecoration(
                          // border: Border.all(width: 0, color: Colors.purple),
                          // borderRadius: BorderRadius.circular(10),
                          ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Row(
                          children: <Widget>[
                            InkWell(
                              child: Container(
                                width: 24,
                                color: Colors.purple,
                                child: Center(
                                  child: Icon(
                                    Icons.remove,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              onTap: () {
                                if (_itemcount > 1) {
                                  setState(() {
                                    _itemcount -= 1;
                                  });
                                }
                              },
                            ),
                            Container(
                              width: 24,
                              color: Colors.white,
                              child: Center(
                                child: Text(
                                  "$_itemcount",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            InkWell(
                              child: Container(
                                width: 24,
                                color: Colors.purple,
                                child: Center(
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              onTap: () {
                                setState(() {
                                  _itemcount += 1;
                                });
                              },
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      width: size.width - 192,
                      child: Text(
                        "Simple inofrmaiton about prodcut will go here more about will go here",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.delete),
                      onPressed: () {},
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
