import 'package:flutter/material.dart';

//=================MY OWN IMPORTS======================
import 'package:alluredesigns/components/constants.dart';

class UserShippingAddress extends StatefulWidget {
  @override
  _UserShippingAddressState createState() => _UserShippingAddressState();
}

class _UserShippingAddressState extends State<UserShippingAddress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: kAppBarIconTheme,
        centerTitle: true,
        title: Text(
          "Shipping Address",
          style: kAppBarTitleStyle,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: kDefaultBorderRadius,
          ),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 20.0,
                  top: 35.0,
                ),
                child: Text(
                  " Pincode * ",
                  style: TextStyle(
                    fontSize: 12.0,
                    fontFamily: "DidactGothic",
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              ProfileTextField(
                labelHint: "Enter Your Area Pincode... ",
                textInputType: TextInputType.number,
              ),
              Row(
                children: [
                  ProfileLabel(
                    label: " House No., Building name ",
                  ),
                  Text(
                    "*",
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
              ProfileTextField(
                labelHint: "Enter Your Details... ",
                textInputType: TextInputType.emailAddress,
              ),
              Row(
                children: [
                  ProfileLabel(
                    label: " Road Name, Area, Colony ",
                  ),
                  Text(
                    "*",
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
              ProfileTextField(
                labelHint: "Enter Your Details... ",
                textInputType: TextInputType.emailAddress,
              ),
              Row(
                children: [
                  ProfileLabel(
                    label: " City ",
                  ),
                  Text(
                    "*",
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
              ProfileTextField(
                labelHint: "Enter Your City... ",
                textInputType: TextInputType.emailAddress,
              ),
              Row(
                children: [
                  ProfileLabel(
                    label: " State ",
                  ),
                  Text(
                    "*",
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
              ProfileTextField(
                labelHint: "Enter Your State... ",
                textInputType: TextInputType.emailAddress,
              ),
              ProfileLabel(
                label: " Landmark (Optional) ",
              ),
              ProfileTextField(
                labelHint: "Enter Landmark... ",
                textInputType: TextInputType.emailAddress,
              ),
              Row(
                children: [
                  ProfileLabel(
                    label: " Name ",
                  ),
                  Text(
                    "*",
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
              ProfileTextField(
                labelHint: "Enter Your Name... ",
                textInputType: TextInputType.emailAddress,
              ),
              Row(
                children: [
                  ProfileLabel(
                    label: " 10-digit mobile number ",
                  ),
                  Text(
                    "*",
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
              ProfileTextField(
                labelHint: "Enter Your Mobile Number... ",
                textInputType: TextInputType.phone,
              ),
              ProfileTextField(
                labelHint: "Alternate Phone Number (Optional)... ",
                textInputType: TextInputType.phone,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Container(
          color: kOurThemeColor,
          height: 70.0,
          child: Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Text(
              "SAVE",
              textAlign: TextAlign.center,
              style: TextStyle(
                letterSpacing: 1.0,
                fontSize: 30.0,
                color: Colors.white,
                fontFamily: "Raleway",
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ProfileLabel extends StatelessWidget {
  final String label;
  ProfileLabel({
    @required this.label,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20.0,
        bottom: 10.0,
      ),
      child: Text(
        label,
        style: TextStyle(
          fontSize: 12.0,
          fontFamily: "DidactGothic",
        ),
      ),
    );
  }
}

class ProfileTextField extends StatefulWidget {
  final labelHint;
  final textInputType;
  ProfileTextField({
    @required this.labelHint,
    @required this.textInputType,
  });
  @override
  _ProfileTextFieldState createState() => _ProfileTextFieldState();
}

class _ProfileTextFieldState extends State<ProfileTextField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(
            right: 20.0,
            left: 20.0,
          ),
          child: TextField(
            keyboardType: widget.textInputType,
            style: TextStyle(
              height: 1.0,
              color: Colors.black,
            ),
            decoration: InputDecoration(
              isDense: true,
              filled: true,
              fillColor: Colors.grey.shade300,
              hintText: widget.labelHint,
              hintStyle: TextStyle(
                color: Colors.black,
                fontSize: 10.0,
              ),
              contentPadding: EdgeInsets.only(
                top: 20.0,
                left: 10.0,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(5.0),
                ),
              ),
            ),
            onChanged: (value) {
              print(value);
            },
          ),
        ),
        SizedBox(
          height: 30.0,
        ),
      ],
    );
  }
}

const kStar = Text("*");
