import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:alluredesigns/components/constants.dart';

class TrackOrderPage extends StatefulWidget {
  final productName;
  TrackOrderPage({
    @required this.productName,
  });
  @override
  _TrackOrderPageState createState() => _TrackOrderPageState();
}

class _TrackOrderPageState extends State<TrackOrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        iconTheme: kAppBarIconTheme,
        centerTitle: true,
        backgroundColor: Color(0xFFFFFFFF),
        title: Text(
          "TRACK YOUR ORDER",
          style: kAppBarTitleStyle,
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.productName,
              style: TextStyle(
                fontSize: 20.0,
                fontFamily: 'Raleway',
                color: kOurThemeColor,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "Order Number 1001",
              style: TextStyle(
                fontSize: 18.0,
                fontFamily: 'DidactGothic',
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "Order Confirmed",
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 15),
              height: 1,
              color: Colors.grey,
            ),
            SizedBox(
              height: 30.0,
            ),
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    left: 13,
                    top: 40,
                  ),
                  width: 4,
                  height: 270,
                  color: Colors.grey,
                ),
                Column(
                  children: [
                    statusWidget("Confirmed", true),
                    SizedBox(
                      height: 25.0,
                    ),
                    statusWidget("Shipped", false),
                    SizedBox(
                      height: 25.0,
                    ),
                    statusWidget("Out for Delivery", false),
                    SizedBox(
                      height: 25.0,
                    ),
                    statusWidget("Delivered", false),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 30.0,
            ),
            Container(
              margin: EdgeInsets.symmetric(
                vertical: 15,
              ),
              height: 1,
              color: Colors.grey,
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    vertical: 15,
                    horizontal: 20,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    border: Border.all(
                      color: kOurThemeColor,
                    ),
                  ),
                  child: Text(
                    "Cancel Order",
                    style: TextStyle(
                      fontSize: 15.0,
                      color: kOurThemeColor,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    vertical: 15,
                    horizontal: 20,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    color: kOurThemeColor,
                  ),
                  child: Text(
                    "My Orders",
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Container statusWidget(String status, bool isActive) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 20,
      ),
      child: Row(
        children: [
          Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: (isActive) ? kOurThemeColor : Colors.white,
              border: Border.all(
                color: (isActive) ? Colors.transparent : kOurThemeColor,
                width: 3,
              ),
            ),
          ),
          SizedBox(
            width: 30,
          ),
          Text(
            status,
            style: TextStyle(
              fontSize: 20.0,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w600,
              color: (isActive) ? kOurThemeColor : Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
