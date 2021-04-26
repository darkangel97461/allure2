import 'package:flutter/material.dart';

//====================MY OWN IMPORTS=================
import 'package:alluredesigns/components/constants.dart';
import 'package:alluredesigns/components/view_size_chart.dart';

enum WidgetMarker {
  extrasmall,
  small,
  medium,
  large,
  extralarge,
  doubleextralarge
}

enum ColorWidgetMarker { red, white, black, blue, yellow }

class SizeSheet extends StatefulWidget {
  @override
  _SizeSheetState createState() => _SizeSheetState();
}

class _SizeSheetState extends State<SizeSheet> {
  WidgetMarker selectedWidgetMarker = WidgetMarker.small;
  ColorWidgetMarker selectedColor = ColorWidgetMarker.white;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400.0,
      color: Color(0xFF363636),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.0),
            topLeft: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 15.0,
                left: 12.0,
              ),
              child: Text(
                "Select Your Size :",
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.w600,
                  fontFamily: "DidactGothic",
                ),
              ),
            ),
            Container(
              height: 100.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Row(
                    children: [
                      StatefulBuilder(builder:
                          (BuildContext context, StateSetter setModalState) {
                        return Padding(
                          padding: const EdgeInsets.only(
                            left: 30.0,
                            top: 15.0,
                          ),
                          child: Material(
                            elevation: 2.0,
                            borderRadius: BorderRadius.all(
                              Radius.circular(5.0),
                            ),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedWidgetMarker =
                                      WidgetMarker.extrasmall;
                                });
                              },
                              child: Container(
                                height: 50.0,
                                width: 50.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(5.0),
                                  ),
                                  color: (selectedWidgetMarker ==
                                          WidgetMarker.extrasmall)
                                      ? kOurThemeColor
                                      : Colors.white,
                                ),
                                child: Center(
                                  child: Text(
                                    "XS",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 30.0,
                                      color: (selectedWidgetMarker ==
                                              WidgetMarker.extrasmall)
                                          ? Colors.white
                                          : Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      }),
                      StatefulBuilder(builder:
                          (BuildContext context, StateSetter setModalState) {
                        return Padding(
                          padding: const EdgeInsets.only(
                            left: 30.0,
                            top: 15.0,
                          ),
                          child: Material(
                            elevation: 2.0,
                            borderRadius: BorderRadius.all(
                              Radius.circular(5.0),
                            ),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedWidgetMarker = WidgetMarker.small;
                                });
                              },
                              child: Container(
                                height: 50.0,
                                width: 50.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(5.0),
                                  ),
                                  color: (selectedWidgetMarker ==
                                          WidgetMarker.small)
                                      ? kOurThemeColor
                                      : Colors.white,
                                ),
                                child: Center(
                                  child: Text(
                                    "S",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 30.0,
                                      color: (selectedWidgetMarker ==
                                              WidgetMarker.small)
                                          ? Colors.white
                                          : Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      }),
                      StatefulBuilder(builder:
                          (BuildContext context, StateSetter setModalState) {
                        return Padding(
                          padding: const EdgeInsets.only(
                            left: 30.0,
                            top: 15.0,
                          ),
                          child: Material(
                            elevation: 2.0,
                            borderRadius: BorderRadius.all(
                              Radius.circular(5.0),
                            ),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedWidgetMarker = WidgetMarker.medium;
                                });
                              },
                              child: Container(
                                height: 50.0,
                                width: 50.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(5.0),
                                  ),
                                  color: selectedWidgetMarker ==
                                          WidgetMarker.medium
                                      ? kOurThemeColor
                                      : Colors.white,
                                ),
                                child: Center(
                                  child: Text(
                                    "M",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 30.0,
                                      color: (selectedWidgetMarker ==
                                              WidgetMarker.medium)
                                          ? Colors.white
                                          : Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      }),
                      StatefulBuilder(builder:
                          (BuildContext context, StateSetter setModalState) {
                        return Padding(
                          padding: const EdgeInsets.only(
                            left: 30.0,
                            top: 15.0,
                          ),
                          child: Material(
                            elevation: 2.0,
                            borderRadius: BorderRadius.all(
                              Radius.circular(5.0),
                            ),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedWidgetMarker = WidgetMarker.large;
                                });
                              },
                              child: Container(
                                height: 50.0,
                                width: 50.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(5.0),
                                  ),
                                  color: (selectedWidgetMarker ==
                                          WidgetMarker.large)
                                      ? kOurThemeColor
                                      : Colors.white,
                                ),
                                child: Center(
                                  child: Text(
                                    "L",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 30.0,
                                      color: (selectedWidgetMarker ==
                                              WidgetMarker.large)
                                          ? Colors.white
                                          : Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      }),
                      StatefulBuilder(builder:
                          (BuildContext context, StateSetter setModalState) {
                        return Padding(
                          padding: const EdgeInsets.only(
                            left: 30.0,
                            top: 15.0,
                          ),
                          child: Material(
                            elevation: 2.0,
                            borderRadius: BorderRadius.all(
                              Radius.circular(5.0),
                            ),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedWidgetMarker =
                                      WidgetMarker.extralarge;
                                });
                              },
                              child: Container(
                                height: 50.0,
                                width: 50.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(5.0),
                                  ),
                                  color: (selectedWidgetMarker ==
                                          WidgetMarker.extralarge)
                                      ? kOurThemeColor
                                      : Colors.white,
                                ),
                                child: Center(
                                  child: Text(
                                    "XL",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 30.0,
                                      color: (selectedWidgetMarker ==
                                              WidgetMarker.extralarge)
                                          ? Colors.white
                                          : Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      }),
                      StatefulBuilder(builder:
                          (BuildContext context, StateSetter setModalState) {
                        return Padding(
                          padding: const EdgeInsets.only(
                            left: 30.0,
                            right: 20.0,
                            top: 15.0,
                          ),
                          child: Material(
                            elevation: 2.0,
                            borderRadius: BorderRadius.all(
                              Radius.circular(5.0),
                            ),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedWidgetMarker =
                                      WidgetMarker.doubleextralarge;
                                });
                              },
                              child: Container(
                                height: 50.0,
                                width: 65.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(5.0),
                                  ),
                                  color: (selectedWidgetMarker ==
                                          WidgetMarker.doubleextralarge)
                                      ? kOurThemeColor
                                      : Colors.white,
                                ),
                                child: Center(
                                  child: Text(
                                    "XXL",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 30.0,
                                      color: (selectedWidgetMarker ==
                                              WidgetMarker.doubleextralarge)
                                          ? Colors.white
                                          : Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      }),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 330.0),
              child: Text(
                "Scroll >>",
                style: TextStyle(color: kOurThemeColor),
              ),
            ),
            GestureDetector(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) => ViewSizeChart(),
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 25.0,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      width: 3.0,
                      color: kOurThemeColor,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                  ),
                  height: 50.0,
                  width: 160.0,
                  child: Center(
                    child: Text(
                      "View Size Chart",
                      style: TextStyle(
                        letterSpacing: 1.0,
                        color: kOurThemeColor,
                        fontSize: 18.0,
                        fontFamily: "Raleway",
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 15.0,
                left: 12.0,
              ),
              child: Text(
                "Available Colors :",
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.w600,
                  fontFamily: "DidactGothic",
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 15.0,
                    left: 30.0,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedColor = ColorWidgetMarker.black;
                      });
                    },
                    child: Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.all(
                        Radius.circular(50.0),
                      ),
                      child: Container(
                        height: 30.0,
                        width: 30.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(50.0),
                          ),
                          color: Colors.black,
                          border: Border.all(
                            color: (selectedColor == ColorWidgetMarker.black)
                                ? kOurThemeColor
                                : Colors.white,
                            width: 3.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 15.0,
                    left: 30.0,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedColor = ColorWidgetMarker.white;
                      });
                    },
                    child: Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.all(
                        Radius.circular(50.0),
                      ),
                      child: Container(
                        height: 30.0,
                        width: 30.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(50.0),
                          ),
                          color: Colors.white,
                          border: Border.all(
                            color: (selectedColor == ColorWidgetMarker.white)
                                ? kOurThemeColor
                                : Colors.white,
                            width: 3.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 15.0,
                    left: 30.0,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedColor = ColorWidgetMarker.yellow;
                      });
                    },
                    child: Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.all(
                        Radius.circular(50.0),
                      ),
                      child: Container(
                        height: 30.0,
                        width: 30.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(50.0),
                          ),
                          color: Colors.yellow,
                          border: Border.all(
                            color: (selectedColor == ColorWidgetMarker.yellow)
                                ? kOurThemeColor
                                : Colors.white,
                            width: 3.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 15.0,
                    left: 30.0,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedColor = ColorWidgetMarker.blue;
                      });
                    },
                    child: Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.all(
                        Radius.circular(50.0),
                      ),
                      child: Container(
                        height: 30.0,
                        width: 30.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(50.0),
                          ),
                          color: Colors.blue,
                          border: Border.all(
                            color: (selectedColor == ColorWidgetMarker.blue)
                                ? kOurThemeColor
                                : Colors.white,
                            width: 3.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 15.0,
                    left: 30.0,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedColor = ColorWidgetMarker.red;
                      });
                    },
                    child: Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.all(
                        Radius.circular(50.0),
                      ),
                      child: Container(
                        height: 30.0,
                        width: 30.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(50.0),
                          ),
                          color: Colors.red,
                          border: Border.all(
                            color: (selectedColor == ColorWidgetMarker.red)
                                ? kOurThemeColor
                                : Colors.white,
                            width: 3.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 210.0,
                top: 25.0,
                right: 30.0,
              ),
              child: InkWell(
                onTap: () {},
                child: Material(
                  elevation: 2.0,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                  child: Container(
                    height: 55.0,
                    decoration: BoxDecoration(
                      color: kOurThemeColor,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "Proceed",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22.0,
                        ),
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
