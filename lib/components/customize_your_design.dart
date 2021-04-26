import 'package:flutter/material.dart';

//==============MY OWN IMPORTS================
import 'package:alluredesigns/components/constants.dart';
import 'package:alluredesigns/screens/customize_your_design_screen.dart';

class CustomizeYourDesign extends StatefulWidget {
  @override
  _CustomizeYourDesignState createState() => _CustomizeYourDesignState();
}

class _CustomizeYourDesignState extends State<CustomizeYourDesign> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: kDefaultBorderRadius,
      child: InkWell(
        hoverColor: Colors.white,
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CustomizeYourDesignScreen(),
            ),
          );
        },
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/custom.jpeg'),
              fit: BoxFit.cover,
            ),
          ),
          height: 150.0,
          child: Column(
            children: [
              SizedBox(
                height: 6.0,
              ),
              Icon(
                Icons.add_to_photos,
                size: 50.0,
                color: Colors.white,
              ),
              SizedBox(
                height: 5.0,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 50.0,
                  ),
                  Text(
                    "CUSTOMIZE  YOUR  DESIGN",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 22.0,
                      fontFamily: "ReemKufi",
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 8.0,
              ),
              Text(
                " (HAND EMBROIDERY)",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 22.0,
                  fontFamily: "ReemKufi",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
