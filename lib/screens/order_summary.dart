import 'package:alluredesigns/screens/payments_screen.dart';
import 'package:alluredesigns/screens/user_shipping_address.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//=========================MY OWN IMPORTS.=========================
import 'package:alluredesigns/components/constants.dart';

class OrderSummaryScreen extends StatefulWidget {
  @override
  _OrderSummaryScreenState createState() => _OrderSummaryScreenState();
}

class _OrderSummaryScreenState extends State<OrderSummaryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        iconTheme: kAppBarIconTheme,
        centerTitle: true,
        backgroundColor: Color(0xFFFFFFFF),
        title: Text(
          "ORDER SUMMARY",
          style: kAppBarTitleStyle,
        ),
      ),
      body: ListView(
        children: [
          Container(
            height: 250.0,
            child: ListView.builder(
              itemCount: kOrderProducts.length,
              itemBuilder: (context, index) {
                return SingleOrderProduct(
                  orderProductColor: kCartProducts[index]["color"],
                  orderProductName: kCartProducts[index]["name"],
                  orderProductPicture: kCartProducts[index]["picture"],
                  orderProductPrice: kCartProducts[index]["price"],
                  orderProductSize: kCartProducts[index]["size"],
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Material(
              elevation: 5.0,
              borderRadius: BorderRadius.all(
                Radius.circular(
                  20.0,
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      20.0,
                    ),
                  ),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Price Details :",
                        style: TextStyle(
                          fontSize: 22.0,
                          fontFamily: 'Raleway',
                          color: Colors.grey.shade600,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Price (${kOrderProducts.length} items) :",
                              style: TextStyle(
                                fontSize: 17.0,
                              ),
                            ),
                            Text(
                              "₹${kCartProducts[0]["price"]}",
                              style: TextStyle(
                                fontSize: 17.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Discount :",
                              style: TextStyle(
                                fontSize: 17.0,
                              ),
                            ),
                            Text(
                              "50%",
                              style: TextStyle(
                                fontSize: 17.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Delivery Charge :",
                              style: TextStyle(
                                fontSize: 17.0,
                              ),
                            ),
                            Text(
                              "",
                              style: TextStyle(
                                fontSize: 17.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(),
                      SizedBox(
                        height: 30.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Amount Payable :",
                              style: TextStyle(
                                fontSize: 20.0,
                                color: kOurThemeColor,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              "₹${kCartProducts[0]["price"]}",
                              style: TextStyle(
                                fontSize: 19.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Material(
              elevation: 5.0,
              borderRadius: BorderRadius.all(
                Radius.circular(
                  20.0,
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      20.0,
                    ),
                  ),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 5.0,
                          horizontal: 10.0,
                        ),
                        child: Text(
                          "Madhavan S S",
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 5.0,
                          horizontal: 10.0,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Address :",
                              style: TextStyle(
                                fontSize: 17.0,
                              ),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 10.0,
                                      vertical: 2.0,
                                    ),
                                    child: Text(
                                      "hvjhndbsjdbbvdvjbsdvbiabvjaidhbvabbdvaidvadvaidvahdvadiva divadsjvbaisdvbaidjvbaidvbaidbviadviabdv",
                                      style: TextStyle(
                                        fontSize: 15.0,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 10.0,
                                      vertical: 2.0,
                                    ),
                                    child: Text(
                                      "695032",
                                      style: TextStyle(
                                        fontSize: 17.0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Phone No :",
                              style: TextStyle(
                                fontSize: 17.0,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(
                                "+910000000000",
                                style: TextStyle(
                                  fontSize: 17.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        height: 40.0,
                        decoration: BoxDecoration(
                          color: kOurThemeColor,
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              10.0,
                            ),
                          ),
                        ),
                        width: MediaQuery.of(context).size.width,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => UserShippingAddress(),
                              ),
                            );
                          },
                          child: Center(
                            child: Text(
                              "Change Address",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontFamily: 'Raleway',
                                letterSpacing: 1.5,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 5.0,
                ),
                child: ListTile(
                  title: Text(
                    'Total :',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'Raleway',
                    ),
                  ),
                  subtitle: Text(
                    '₹${kCartProducts[0]["price"]}',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                margin: EdgeInsets.only(
                  right: 15.0,
                  left: 15.0,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5.0),
                  child: MaterialButton(
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    height: 50.0,
                    elevation: 0.0,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PaymentsScreen(),
                        ),
                      );
                    },
                    color: kOurThemeColor,
                    textColor: Colors.white,
                    child: Text(
                      "Continue",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 25.0,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.0,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SingleOrderProduct extends StatefulWidget {
  final orderProductName;
  final orderProductPicture;
  final orderProductPrice;
  final orderProductColor;
  final orderProductSize;

  SingleOrderProduct({
    @required this.orderProductColor,
    @required this.orderProductName,
    @required this.orderProductPicture,
    @required this.orderProductPrice,
    @required this.orderProductSize,
  });
  @override
  _SingleOrderProductState createState() => _SingleOrderProductState();
}

class _SingleOrderProductState extends State<SingleOrderProduct> {
  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}
