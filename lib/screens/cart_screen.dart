import 'package:flutter/material.dart';

//===================MY OWN IMPORTS========================
import 'package:alluredesigns/components/constants.dart';
import 'package:alluredesigns/components/single_cart_product.dart';
import 'package:alluredesigns/screens/order_summary.dart';

void main() {
  runApp(
    MaterialApp(
      home: CartScreen(),
    ),
  );
}

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        elevation: 0.5,
        iconTheme: kAppBarIconTheme,
        centerTitle: true,
        backgroundColor: Color(0xFFFFFFFF),
        title: Text(
          "CART",
          style: kAppBarTitleStyle,
        ),
      ),
      body: ListView.builder(
        itemCount: kCartProducts.length,
        itemBuilder: (context, index) {
          return SingleCartProduct(
            cartProductColor: kCartProducts[index]["color"],
            cartProductName: kCartProducts[index]["name"],
            cartProductPicture: kCartProducts[index]["picture"],
            cartProductPrice: kCartProducts[index]["price"],
            cartProductQuantity: kCartProducts[index]["quantity"],
            cartProductSize: kCartProducts[index]["size"],
          );
        },
      ),
      bottomNavigationBar: kCartProducts.length > 0
          ? Container(
              color: Colors.white,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: ListTile(
                      title: Text(
                        'Total:',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontFamily: 'Raleway',
                        ),
                      ),
                      subtitle: Text(
                        '₹2000',
                        style: TextStyle(
                          fontSize: 20.0,
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
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          height: 50.0,
                          elevation: 0.0,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => OrderSummaryScreen(),
                              ),
                            );
                          },
                          color: kOurThemeColor,
                          textColor: Colors.white,
                          child: Text(
                            "Check Out",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Raleway',
                              fontSize: 22.0,
                              letterSpacing: 1.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          : Center(
              child: Text(
                "Your Cart is Empty",
                style: TextStyle(
                  color: Colors.grey.shade700,
                  fontFamily: 'Raleway',
                  fontSize: 18.0,
                ),
              ),
            ),
    );
  }
}
