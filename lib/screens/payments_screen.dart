import 'package:flutter/material.dart';

//========================MY OWN IMPORTS==========================
import 'package:alluredesigns/components/constants.dart';

class PaymentsScreen extends StatefulWidget {
  @override
  _PaymentsScreenState createState() => _PaymentsScreenState();
}

enum selectedOption { gpay, phonepe, paytm, creditcard }

class _PaymentsScreenState extends State<PaymentsScreen> {
  var selectedMethod = selectedOption.gpay;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        iconTheme: kAppBarIconTheme,
        centerTitle: true,
        backgroundColor: Color(0xFFFFFFFF),
        title: Text(
          "PAYMENTS",
          style: kAppBarTitleStyle,
        ),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10.0,
            ),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedMethod = selectedOption.gpay;
                });
              },
              child: Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 10.0,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      10.0,
                    ),
                  ),
                  color: Colors.grey.shade200,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Stack(
                          children: [
                            Container(
                              height: 25.0,
                              width: 25.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                    25.0,
                                  ),
                                ),
                                color: Colors.white,
                                border: Border.all(
                                  color: (selectedMethod == selectedOption.gpay)
                                      ? Colors.blue
                                      : Colors.white,
                                  width: 3.0,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 7.5,
                                top: 7.5,
                              ),
                              child: Container(
                                height: 10.0,
                                width: 10.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(
                                      10.0,
                                    ),
                                  ),
                                  color: (selectedMethod == selectedOption.gpay)
                                      ? Colors.blue
                                      : Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 50.0,
                      ),
                      Text(
                        "G Pay",
                        style: TextStyle(
                          fontSize: 25.0,
                          fontFamily: 'Raleway',
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 115.0),
                          child: Image.asset(
                            'images/gpay1.png',
                            width: 50.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10.0,
            ),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedMethod = selectedOption.phonepe;
                });
              },
              child: Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 10.0,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      10.0,
                    ),
                  ),
                  color: Colors.grey.shade200,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10.0,
                      ),
                      Stack(
                        children: [
                          Container(
                            height: 25.0,
                            width: 25.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  25.0,
                                ),
                              ),
                              color: Colors.white,
                              border: Border.all(
                                color:
                                    (selectedMethod == selectedOption.phonepe)
                                        ? Colors.blue
                                        : Colors.white,
                                width: 3.0,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 7.5,
                              top: 7.5,
                            ),
                            child: Container(
                              height: 10.0,
                              width: 10.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                    10.0,
                                  ),
                                ),
                                color:
                                    (selectedMethod == selectedOption.phonepe)
                                        ? Colors.blue
                                        : Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 50.0,
                      ),
                      Text(
                        "PhonePe",
                        style: TextStyle(
                          fontSize: 25.0,
                          fontFamily: 'Raleway',
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 80.0),
                          child: Image.asset(
                            'images/phonepe1.png',
                            width: 60.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10.0,
            ),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedMethod = selectedOption.paytm;
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      10.0,
                    ),
                  ),
                  color: Colors.grey.shade200,
                ),
                margin: EdgeInsets.symmetric(
                  horizontal: 10.0,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10.0,
                      ),
                      Stack(
                        children: [
                          Container(
                            height: 25.0,
                            width: 25.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  25.0,
                                ),
                              ),
                              color: Colors.white,
                              border: Border.all(
                                color: (selectedMethod == selectedOption.paytm)
                                    ? Colors.blue
                                    : Colors.white,
                                width: 3.0,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 7.5,
                              top: 7.5,
                            ),
                            child: Container(
                              height: 10.0,
                              width: 10.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                    10.0,
                                  ),
                                ),
                                color: (selectedMethod == selectedOption.paytm)
                                    ? Colors.blue
                                    : Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 50.0,
                      ),
                      Text(
                        "PayTM",
                        style: TextStyle(
                          fontSize: 25.0,
                          fontFamily: 'Raleway',
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 80.0),
                          child: Image.asset(
                            'images/paytm1.png',
                            width: 60.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10.0,
            ),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedMethod = selectedOption.creditcard;
                });
              },
              child: Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 10.0,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      10.0,
                    ),
                  ),
                  color: Colors.grey.shade200,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10.0,
                      ),
                      Stack(
                        children: [
                          Container(
                            height: 25.0,
                            width: 25.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  25.0,
                                ),
                              ),
                              color: Colors.white,
                              border: Border.all(
                                color: (selectedMethod ==
                                        selectedOption.creditcard)
                                    ? Colors.blue
                                    : Colors.white,
                                width: 3.0,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 7.5,
                              top: 7.5,
                            ),
                            child: Container(
                              height: 10.0,
                              width: 10.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                    10.0,
                                  ),
                                ),
                                color: (selectedMethod ==
                                        selectedOption.creditcard)
                                    ? Colors.blue
                                    : Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 30.0,
                      ),
                      Expanded(
                        child: Text(
                          "Credit/Debit/ATM Card",
                          style: TextStyle(
                            fontSize: 25.0,
                            fontFamily: 'Raleway',
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Image.asset(
                          'images/credit3.png',
                          width: 80.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.grey.shade100,
        height: 100.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    onPressed: () {},
                    color: kOurThemeColor,
                    textColor: Colors.white,
                    child: Text(
                      "PROCEED TO PAY",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20.0,
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
