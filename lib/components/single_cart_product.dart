import 'package:flutter/material.dart';

//================MY OWN IMPORTS===================
import 'package:alluredesigns/components/constants.dart';

class SingleCartProduct extends StatefulWidget {
  final cartProductName;
  final cartProductPicture;
  final cartProductPrice;
  final cartProductColor;
  final cartProductSize;
  int cartProductQuantity;

  SingleCartProduct({
    @required this.cartProductColor,
    @required this.cartProductName,
    @required this.cartProductPicture,
    @required this.cartProductPrice,
    @required this.cartProductQuantity,
    @required this.cartProductSize,
  });

  @override
  _SingleCartProductState createState() => _SingleCartProductState();
}

class _SingleCartProductState extends State<SingleCartProduct> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Material(
        color: Colors.white,
        elevation: 1.0,
        borderRadius: kDefaultBorderRadius,
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: kDefaultBorderRadius,
            ),
            height: 110.0,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.asset(
                    widget.cartProductPicture,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 10.0,
                        top: 10.0,
                        bottom: 10.0,
                      ),
                      child: Text(
                        widget.cartProductName,
                        style: TextStyle(
                          fontSize: 20.0,
                          fontFamily: "Raleway",
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Text(
                            "Size:",
                            style: TextStyle(
                              fontSize: 18.0,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 13.0),
                          child: Text(
                            widget.cartProductSize,
                            style: TextStyle(
                              color: kOurThemeColor,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30.0),
                          child: Text(
                            "Color:",
                            style: TextStyle(
                              fontSize: 18.0,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 13.0),
                          child: Text(
                            widget.cartProductColor,
                            style: TextStyle(
                              color: kOurThemeColor,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Text(
                              "Price:",
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 13.0),
                            child: Text(
                              "${widget.cartProductPrice}",
                              style: TextStyle(
                                color: kOurThemeColor,
                                fontSize: 20.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 35.0,
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 8.0,
                      ),
                      child: InkWell(
                        child: Icon(
                          Icons.add_box,
                          size: 25.0,
                          color: kOurThemeColor,
                        ),
                        onTap: () {
                          setState(() {
                            if (widget.cartProductQuantity < 15) {
                              setState(() {
                                widget.cartProductQuantity++;
                              });
                            }
                          });
                        },
                      ),
                    ),
                    Text(
                      widget.cartProductQuantity.toString(),
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 8.0,
                      ),
                      child: InkWell(
                        child: Icon(
                          Icons.indeterminate_check_box,
                          size: 25.0,
                          color: kOurThemeColor,
                        ),
                        onTap: () {
                          setState(() {
                            if (widget.cartProductQuantity > 1) {
                              setState(() {
                                widget.cartProductQuantity--;
                              });
                            }
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
