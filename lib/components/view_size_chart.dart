import 'package:flutter/material.dart';

class ViewSizeChart extends StatefulWidget {
  @override
  _ViewSizeChartState createState() => _ViewSizeChartState();
}

class _ViewSizeChartState extends State<ViewSizeChart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.0,
      color: Color(0xFF191919),
      child: Column(
        children: [
          Container(
            height: 300.0,
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
                    left: 10.0,
                    top: 10.0,
                  ),
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                      size: 30.0,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                Image.asset('images/chart.jpeg'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
