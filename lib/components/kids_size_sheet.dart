import 'package:flutter/material.dart';

//====================MY OWN IMPORTS=================
import 'package:alluredesigns/components/constants.dart';

enum WidgetMarker {
  sixToOneYear,
  twoYear,
  threeYear,
  fourYear,
  fiveYear,
  sixYear,
  sevenYear,
  eightYear
}

enum ColorWidgetMarker { red, white, black, blue, yellow }

class KidsSizeSheet extends StatefulWidget {
  @override
  _KidsSizeSheetState createState() => _KidsSizeSheetState();
}

class _KidsSizeSheetState extends State<KidsSizeSheet> {
  WidgetMarker selectedWidgetMarker = WidgetMarker.sixToOneYear;
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
                "Select Age Limit :",
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
                                      WidgetMarker.sixToOneYear;
                                });
                              },
                              child: Container(
                                height: 50.0,
                                width: 132.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(5.0),
                                  ),
                                  color: (selectedWidgetMarker ==
                                          WidgetMarker.sixToOneYear)
                                      ? kOurThemeColor
                                      : Colors.white,
                                ),
                                child: Center(
                                  child: Row(
                                    children: [
                                      Text(
                                        " 6",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 30.0,
                                          color: (selectedWidgetMarker ==
                                                  WidgetMarker.sixToOneYear)
                                              ? Colors.white
                                              : Colors.black,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          bottom: 9.0,
                                        ),
                                        child: Align(
                                          alignment: Alignment.bottomRight,
                                          child: Text(
                                            "months",
                                            style: TextStyle(
                                              fontSize: 10.0,
                                              color: (selectedWidgetMarker ==
                                                      WidgetMarker.sixToOneYear)
                                                  ? Colors.white
                                                  : Colors.black,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        " - 1",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 30.0,
                                          color: (selectedWidgetMarker ==
                                                  WidgetMarker.sixToOneYear)
                                              ? Colors.white
                                              : Colors.black,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          bottom: 9.0,
                                        ),
                                        child: Align(
                                          alignment: Alignment.bottomRight,
                                          child: Text(
                                            "years ",
                                            style: TextStyle(
                                              fontSize: 10.0,
                                              color: (selectedWidgetMarker ==
                                                      WidgetMarker.sixToOneYear)
                                                  ? Colors.white
                                                  : Colors.black,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
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
                                  selectedWidgetMarker = WidgetMarker.twoYear;
                                });
                              },
                              child: Container(
                                height: 50.0,
                                width: 60.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(5.0),
                                  ),
                                  color: (selectedWidgetMarker ==
                                          WidgetMarker.twoYear)
                                      ? kOurThemeColor
                                      : Colors.white,
                                ),
                                child: Center(
                                  child: Row(
                                    children: [
                                      Text(
                                        " 2",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 30.0,
                                          color: (selectedWidgetMarker ==
                                                  WidgetMarker.twoYear)
                                              ? Colors.white
                                              : Colors.black,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          bottom: 9.0,
                                        ),
                                        child: Align(
                                          alignment: Alignment.bottomRight,
                                          child: Text(
                                            " years ",
                                            style: TextStyle(
                                              fontSize: 10.0,
                                              color: (selectedWidgetMarker ==
                                                      WidgetMarker.twoYear)
                                                  ? Colors.white
                                                  : Colors.black,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
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
                                  selectedWidgetMarker = WidgetMarker.threeYear;
                                });
                              },
                              child: Container(
                                height: 50.0,
                                width: 60.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(5.0),
                                  ),
                                  color: selectedWidgetMarker ==
                                          WidgetMarker.threeYear
                                      ? kOurThemeColor
                                      : Colors.white,
                                ),
                                child: Center(
                                  child: Row(
                                    children: [
                                      Text(
                                        " 3",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 30.0,
                                          color: (selectedWidgetMarker ==
                                                  WidgetMarker.threeYear)
                                              ? Colors.white
                                              : Colors.black,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          bottom: 9.0,
                                        ),
                                        child: Align(
                                          alignment: Alignment.bottomRight,
                                          child: Text(
                                            " years ",
                                            style: TextStyle(
                                              fontSize: 10.0,
                                              color: (selectedWidgetMarker ==
                                                      WidgetMarker.threeYear)
                                                  ? Colors.white
                                                  : Colors.black,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
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
                                  selectedWidgetMarker = WidgetMarker.fourYear;
                                });
                              },
                              child: Container(
                                height: 50.0,
                                width: 60.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(5.0),
                                  ),
                                  color: (selectedWidgetMarker ==
                                          WidgetMarker.fourYear)
                                      ? kOurThemeColor
                                      : Colors.white,
                                ),
                                child: Center(
                                  child: Row(
                                    children: [
                                      Text(
                                        " 4",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 30.0,
                                          color: (selectedWidgetMarker ==
                                                  WidgetMarker.fourYear)
                                              ? Colors.white
                                              : Colors.black,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          bottom: 9.0,
                                        ),
                                        child: Align(
                                          alignment: Alignment.bottomRight,
                                          child: Text(
                                            " years ",
                                            style: TextStyle(
                                              fontSize: 10.0,
                                              color: (selectedWidgetMarker ==
                                                      WidgetMarker.fourYear)
                                                  ? Colors.white
                                                  : Colors.black,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
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
                                  selectedWidgetMarker = WidgetMarker.fiveYear;
                                });
                              },
                              child: Container(
                                height: 50.0,
                                width: 60.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(5.0),
                                  ),
                                  color: (selectedWidgetMarker ==
                                          WidgetMarker.fiveYear)
                                      ? kOurThemeColor
                                      : Colors.white,
                                ),
                                child: Center(
                                  child: Row(
                                    children: [
                                      Text(
                                        " 5",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 30.0,
                                          color: (selectedWidgetMarker ==
                                                  WidgetMarker.fiveYear)
                                              ? Colors.white
                                              : Colors.black,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          bottom: 9.0,
                                        ),
                                        child: Align(
                                          alignment: Alignment.bottomRight,
                                          child: Text(
                                            " years ",
                                            style: TextStyle(
                                              fontSize: 10.0,
                                              color: (selectedWidgetMarker ==
                                                      WidgetMarker.fiveYear)
                                                  ? Colors.white
                                                  : Colors.black,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
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
                                  selectedWidgetMarker = WidgetMarker.sixYear;
                                });
                              },
                              child: Container(
                                height: 50.0,
                                width: 60.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(5.0),
                                  ),
                                  color: (selectedWidgetMarker ==
                                          WidgetMarker.sixYear)
                                      ? kOurThemeColor
                                      : Colors.white,
                                ),
                                child: Center(
                                  child: Row(
                                    children: [
                                      Text(
                                        " 6",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 30.0,
                                          color: (selectedWidgetMarker ==
                                                  WidgetMarker.sixYear)
                                              ? Colors.white
                                              : Colors.black,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          bottom: 9.0,
                                        ),
                                        child: Align(
                                          alignment: Alignment.bottomRight,
                                          child: Text(
                                            " years ",
                                            style: TextStyle(
                                              fontSize: 10.0,
                                              color: (selectedWidgetMarker ==
                                                      WidgetMarker.sixYear)
                                                  ? Colors.white
                                                  : Colors.black,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
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
                                  selectedWidgetMarker = WidgetMarker.sevenYear;
                                });
                              },
                              child: Container(
                                height: 50.0,
                                width: 60.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(5.0),
                                  ),
                                  color: (selectedWidgetMarker ==
                                          WidgetMarker.sevenYear)
                                      ? kOurThemeColor
                                      : Colors.white,
                                ),
                                child: Center(
                                  child: Row(
                                    children: [
                                      Text(
                                        " 7",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 30.0,
                                          color: (selectedWidgetMarker ==
                                                  WidgetMarker.sevenYear)
                                              ? Colors.white
                                              : Colors.black,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          bottom: 9.0,
                                        ),
                                        child: Align(
                                          alignment: Alignment.bottomRight,
                                          child: Text(
                                            " years ",
                                            style: TextStyle(
                                              fontSize: 10.0,
                                              color: (selectedWidgetMarker ==
                                                      WidgetMarker.sevenYear)
                                                  ? Colors.white
                                                  : Colors.black,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
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
                            right: 30.0,
                          ),
                          child: Material(
                            elevation: 2.0,
                            borderRadius: BorderRadius.all(
                              Radius.circular(5.0),
                            ),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedWidgetMarker = WidgetMarker.eightYear;
                                });
                              },
                              child: Container(
                                height: 50.0,
                                width: 60.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(5.0),
                                  ),
                                  color: (selectedWidgetMarker ==
                                          WidgetMarker.eightYear)
                                      ? kOurThemeColor
                                      : Colors.white,
                                ),
                                child: Center(
                                  child: Row(
                                    children: [
                                      Text(
                                        " 8",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 30.0,
                                          color: (selectedWidgetMarker ==
                                                  WidgetMarker.eightYear)
                                              ? Colors.white
                                              : Colors.black,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          bottom: 9.0,
                                        ),
                                        child: Align(
                                          alignment: Alignment.bottomRight,
                                          child: Text(
                                            " years ",
                                            style: TextStyle(
                                              fontSize: 10.0,
                                              color: (selectedWidgetMarker ==
                                                      WidgetMarker.eightYear)
                                                  ? Colors.white
                                                  : Colors.black,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
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
                top: 55.0,
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
