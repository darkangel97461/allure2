import 'package:flutter/material.dart';

//===================MY OWN IMPORTS===================
import 'package:alluredesigns/screens/user_edit_profile.dart';
import 'package:alluredesigns/components/constants.dart';

enum ColorWidgetMarker { red, white, black, blue, yellow }

class BridalSizeChart extends StatefulWidget {
  @override
  _BridalSizeChartState createState() => _BridalSizeChartState();
}

class _BridalSizeChartState extends State<BridalSizeChart> {
  ColorWidgetMarker selectedColor = ColorWidgetMarker.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        iconTheme: kAppBarIconTheme,
        centerTitle: true,
        backgroundColor: Color(0xFFFFFFFF),
        title: Text(
          "BRIDAL SIZE CHART",
          style: kAppBarTitleStyle,
        ),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 30.0,
          ),
          ProfileLabel(label: 'Full Length'),
          ProfileTextField(
            labelHint: 'Full length... (in inches)',
            textInputType: TextInputType.number,
          ),
          ProfileLabel(label: 'Chest'),
          ProfileTextField(
            labelHint: 'Chest... (in inches)',
            textInputType: TextInputType.number,
          ),
          ProfileLabel(label: 'Waist'),
          ProfileTextField(
            labelHint: 'Waist... (in inches)',
            textInputType: TextInputType.number,
          ),
          ProfileLabel(label: 'Hip'),
          ProfileTextField(
            labelHint: 'Hip... (in inches)',
            textInputType: TextInputType.number,
          ),
          ProfileLabel(label: 'Regal'),
          ProfileTextField(
            labelHint: 'Regal... (in inches)',
            textInputType: TextInputType.number,
          ),
          ProfileLabel(label: 'Sleeve Round'),
          ProfileTextField(
            labelHint: 'Sleeve Round... (in inches)',
            textInputType: TextInputType.number,
          ),
          ProfileLabel(label: 'Sleeve Length'),
          ProfileTextField(
            labelHint: 'Sleeve length... (in inches)',
            textInputType: TextInputType.number,
          ),
          ProfileLabel(label: 'Back Neck Length'),
          ProfileTextField(
            labelHint: 'Back neck length... (in inches)',
            textInputType: TextInputType.number,
          ),
          ProfileLabel(label: 'Front Neck Length'),
          ProfileTextField(
            labelHint: 'Front neck length... (in inches)',
            textInputType: TextInputType.number,
          ),
          ProfileLabel(label: 'Yake'),
          ProfileTextField(
            labelHint: 'Yake... (in inches)',
            textInputType: TextInputType.number,
          ),
          ProfileLabel(label: 'Full Shoulder'),
          ProfileTextField(
            labelHint: 'Full shoulder... (in inches)',
            textInputType: TextInputType.number,
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
          SizedBox(
            height: 50.0,
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 75.0,
        color: kOurThemeColor,
        child: Center(
          child: Text(
            'PROCEED',
            style: TextStyle(
              fontSize: 30.0,
              color: Colors.white,
              fontFamily: 'Raleway',
            ),
          ),
        ),
      ),
    );
  }
}
