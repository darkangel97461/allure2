import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

//==================MY OWN IMPORTS.======================
import 'package:alluredesigns/components/constants.dart';

class CustomizeYourDesignScreen extends StatefulWidget {
  @override
  _CustomizeYourDesignScreenState createState() =>
      _CustomizeYourDesignScreenState();
}

class _CustomizeYourDesignScreenState extends State<CustomizeYourDesignScreen> {
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
          "CUSTOMIZED",
          style: kAppBarTitleStyle,
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "What is CUSTOMIZED ?",
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Color(0xFFE0A659),
                        fontFamily: 'Raleway',
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          " 🔆  ",
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            "In this section, we mean if you have designs that you like or designs that you have seen and liked anywhere, we will do it no matter what kind of embroidery it is.",
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.grey.shade700,
                              fontFamily: 'Montserrat',
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          " 🔆  ",
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            "The clothes you want will be delivered to your hands at low cost with or without stitching.",
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.grey.shade700,
                              fontFamily: 'Montserrat',
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
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
                    SizedBox(
                      height: 20.0,
                    ),
                    Center(
                      child: Text(
                        "Terms & Conditions",
                        style: TextStyle(
                          fontSize: 25.0,
                          color: Color(0xFFE0A659),
                          fontFamily: 'Raleway',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    ConditionText(
                      text:
                          "1. For this section, we are redirecting you to WhatsApp.",
                    ),
                    ConditionText(
                      text:
                          "2. Necessary details regarding the product (such as product image, size, colour, embroidery works) can be discussed in WhatsApp.",
                    ),
                    ConditionText(
                      text:
                          "3. Do not use this information for any other purposes.",
                    ),
                    ConditionText(
                      text:
                          "4. Calling Time :  9AM - 6PM [ (Mon - Sat) Sunday Holiday ].",
                    ),
                    ConditionText(
                      text: "5. Reference picture should be clear and visible.",
                    ),
                    ConditionText(
                      text:
                          "6. Colours shown in the picture can vary lightly dense to digital photography.",
                    ),
                    ConditionText(
                      text:
                          "7. Choose the correct size slightly bigger according to size chart.",
                    ),
                    ConditionText(
                      text: "8. No returns & no exchange.",
                    ),
                    ConditionText(
                      text:
                          "9. Cancellation available within 24 hours of order placing.",
                    ),
                    ConditionText(
                      text: "10. Courier charges additional. ",
                    ),
                    ConditionText(
                      text: "11. Fixed Rate.",
                    ),
                    ConditionText(
                      text: "12. Dry wash only.",
                    ),
                    ConditionText(
                      text: "13. No cash on delivery.",
                    ),
                    ConditionText(
                      text:
                          "14.For bridal wears, delivery expected within 15 - 25 days.",
                    ),
                    ConditionText(
                      text:
                          "15. For products other than bridal wears, delivery expected within 5 - 10 days.",
                    ),
                    ConditionText(
                      text:
                          "16. For seasonal products, delivery expected within 5 - 15 days.",
                    ),
                  ],
                ),
              ),
            ),
          ),
          Column(
            children: [
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
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
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            "Please read the above Terms & Conditions and proceed...",
                            style: TextStyle(
                              fontSize: 20.0,
                              fontFamily: 'Raleway',
                              color: Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30.0,
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: 50.0,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xFFE0A659),
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(
                                20.0,
                              ),
                            ),
                          ),
                          child: MaterialButton(
                            onPressed: () {
                              launch('https://wa.me/+918848889544');
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(
                                10.0,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Send Your Designs",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xFFE0A659),
                                      fontSize: 22.0,
                                      fontFamily: 'Raleway',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 35.0,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ConditionText extends StatelessWidget {
  final String text;
  ConditionText({
    @required this.text,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Text(
        text,
      ),
    );
  }
}
