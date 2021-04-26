import 'package:alluredesigns/screens/TrackOrderPage.dart';
import 'package:flutter/material.dart';
import 'package:alluredesigns/components/constants.dart';

class MyOrdersScreen extends StatefulWidget {
  @override
  _MyOrdersScreenState createState() => _MyOrdersScreenState();
}

class _MyOrdersScreenState extends State<MyOrdersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        iconTheme: kAppBarIconTheme,
        centerTitle: true,
        backgroundColor: Color(0xFFFFFFFF),
        title: Text(
          "MY ORDERS",
          style: kAppBarTitleStyle,
        ),
      ),
      body: ListView.builder(
        itemCount: kMyOrderProducts.length,
        itemBuilder: (context, index) {
          return SingleMyOrderProduct(
            orderProductColor: kMyOrderProducts[index]["color"],
            orderProductName: kMyOrderProducts[index]["name"],
            orderProductPicture: kMyOrderProducts[index]["picture"],
            orderProductPrice: kMyOrderProducts[index]["price"],
            orderProductSize: kMyOrderProducts[index]["size"],
          );
        },
      ),
    );
  }
}

class SingleMyOrderProduct extends StatefulWidget {
  final orderProductName;
  final orderProductPicture;
  final orderProductPrice;
  final orderProductColor;
  final orderProductSize;

  SingleMyOrderProduct({
    @required this.orderProductColor,
    @required this.orderProductName,
    @required this.orderProductPicture,
    @required this.orderProductPrice,
    @required this.orderProductSize,
  });
  @override
  _SingleMyOrderProductState createState() => _SingleMyOrderProductState();
}

class _SingleMyOrderProductState extends State<SingleMyOrderProduct> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => TrackOrderPage(
              productName: widget.orderProductName,
            ),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Material(
          color: Colors.white,
          elevation: 5.0,
          borderRadius: kDefaultBorderRadius,
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: kDefaultBorderRadius,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Image.asset(
                          widget.orderProductPicture,
                          fit: BoxFit.cover,
                          width: 50.0,
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
                              widget.orderProductName,
                              style: TextStyle(
                                fontSize: 20.0,
                                fontFamily: "Montserrat",
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
                                  widget.orderProductSize,
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
                                  widget.orderProductColor,
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
                                    "₹${widget.orderProductPrice}",
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
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "Delivery in 10 - 25 days.",
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.green,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "Delivery Charge :",
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
