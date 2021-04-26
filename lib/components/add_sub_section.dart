import 'package:flutter/material.dart';

//=====================MY OWN IMPORTS====================
import 'package:alluredesigns/screens/bridal_size_chart.dart';

class AddSubSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.0,
      color: Color(0xFF757575),
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
                "Choose your preferred type :",
                style: TextStyle(
                  fontSize: 22.0,
                  fontFamily: "DidactGothic",
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () {
                      // showModalBottomSheet(
                      //   context: context,
                      //   builder: (context) => KidsSizeSheet(),
                      // );
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BridalSizeChart(),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 20.0,
                        right: 8.0,
                        left: 8.0,
                      ),
                      child: Material(
                        elevation: 2.0,
                        borderRadius: BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                        child: Container(
                          height: 200.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('images/stitch.jpeg'),
                              fit: BoxFit.cover,
                              colorFilter: ColorFilter.mode(
                                Colors.black.withOpacity(0.9),
                                BlendMode.dstATop,
                              ),
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(20.0),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "STITCHED",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 25.0,
                                fontFamily: "ReemKufi",
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 20.0,
                        right: 8.0,
                        left: 8.0,
                      ),
                      child: Material(
                        elevation: 2.0,
                        borderRadius: BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                        child: Container(
                          height: 200.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20.0),
                            ),
                            image: DecorationImage(
                              image: AssetImage('images/unstitch.jpeg'),
                              fit: BoxFit.cover,
                              colorFilter: ColorFilter.mode(
                                Colors.black.withOpacity(0.9),
                                BlendMode.dstATop,
                              ),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "UNSTITCHED",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 25.0,
                                fontFamily: "ReemKufi",
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
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
}
