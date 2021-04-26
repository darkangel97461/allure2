import 'package:flutter/material.dart';

//==================MY OWN IMPORTS====================
import 'package:alluredesigns/components/constants.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:alluredesigns/components/add_sub_section.dart';

class ProductDetails extends StatefulWidget {
  final productName;
  final productPicture;
  final productPrice;
  final productOldPrice;
  final productDiscount;
  final productDiscription;
  final productMaterial;

  ProductDetails({
    @required this.productName,
    @required this.productPrice,
    @required this.productPicture,
    @required this.productOldPrice,
    this.productDiscount,
    @required this.productDiscription,
    @required this.productMaterial,
  });

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  bool favoriteButton = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Material(
              elevation: 2.0,
              borderRadius: kDefaultBorderRadius,
              child: Stack(
                children: [
                  Container(
                    height: 400.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                      color: Colors.white,
                    ),
                    child: ClipRRect(
                      borderRadius: kDefaultBorderRadius,
                      child: Carousel(
                        dotColor: Colors.white,
                        dotIncreasedColor: Colors.white,
                        dotBgColor: Colors.transparent,
                        autoplay: false,
                        images: [
                          Image.asset(
                            widget.productPicture,
                            fit: BoxFit.contain,
                          ),
                          Image.asset(
                            'images/lehenga2.jpeg',
                            fit: BoxFit.contain,
                          ),
                          Image.asset(
                            'images/carousel1.jpg',
                            fit: BoxFit.contain,
                          ),
                        ],
                      ),
                    ),
                  ),
                  favoriteButton
                      ? Positioned(
                          top: 19.0,
                          right: 23.9,
                          child: Material(
                            borderRadius: BorderRadius.all(
                              Radius.circular(
                                30.0,
                              ),
                            ),
                            elevation: 5.0,
                            child: Container(
                              height: 30.0,
                              width: 30.0,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                    30.0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                      : Positioned(
                          child: Container(),
                        ),
                  Positioned(
                    top: 11,
                    right: 15,
                    child: IconButton(
                      icon: favoriteButton
                          ? Icon(
                              Icons.favorite,
                              color: Colors.white,
                              size: 20.0,
                            )
                          : Icon(
                              Icons.favorite,
                              color: Colors.grey,
                            ),
                      onPressed: () {
                        setState(() {
                          if (favoriteButton == false) {
                            favoriteButton = true;
                          } else {
                            favoriteButton = false;
                          }
                        });
                      },
                    ),
                  ),
                  (widget.productDiscount != null)
                      ? Positioned(
                          top: 15.0,
                          left: 15.0,
                          child: Container(
                            height: 25.0,
                            width: 40.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  20.0,
                                ),
                              ),
                              color: kOurThemeColor,
                            ),
                            child: Center(
                              child: Text(
                                "${widget.productDiscount}%",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'MontserratBold',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14.0,
                                ),
                              ),
                            ),
                          ),
                        )
                      : Positioned(
                          top: 0.0,
                          left: 0.0,
                          child: Container(),
                        ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 8.0,
              left: 8.0,
              right: 8.0,
              bottom: 10.0,
            ),
            child: Material(
              elevation: 3.0,
              borderRadius: BorderRadius.all(
                Radius.circular(20.0),
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20.0),
                  ),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          "White Bridal Lehenga with Digital Art",
                          style: TextStyle(
                            fontSize: 22.0,
                            fontWeight: FontWeight.w400,
                            color: kOurThemeColor,
                            fontFamily: 'Raleway',
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              "Price :",
                              style: TextStyle(
                                color: Colors.grey.shade500,
                                fontSize: 16.0,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Text(
                              '₹ ${widget.productPrice}',
                              style: TextStyle(
                                color: kOurThemeColor,
                                fontSize: 20.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Divider(),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              "Material :",
                              style: TextStyle(
                                color: Colors.grey.shade500,
                                fontSize: 16.0,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Text(
                              '${widget.productMaterial}',
                              style: TextStyle(
                                color: kOurThemeColor,
                                fontSize: 20.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Divider(),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              "Description :",
                              style: TextStyle(
                                color: Colors.grey.shade500,
                                fontSize: 16.0,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                right: 8.0,
                                left: 5.0,
                              ),
                              child: Text(
                                '${widget.productDiscription}',
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 18.0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Divider(),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "Delivery in 10 - 25 days.",
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.green,
                          ),
                        ),
                      ),
                      Divider(),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              "Delivery Charge :",
                              style: TextStyle(
                                color: Colors.grey.shade500,
                                fontSize: 16.0,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                right: 8.0,
                                left: 5.0,
                              ),
                              child: Text(
                                '${widget.productDiscount}',
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 18.0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: Text(
              "Similar Products :",
              style: TextStyle(
                fontSize: 28.0,
                fontFamily: "ReemKufi",
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 70.0,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: MaterialButton(
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          height: 50.0,
          elevation: 0.0,
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (context) => AddSubSection(),
            );
          },
          color: kOurThemeColor,
          textColor: Colors.white,
          child: Text(
            "Add to Cart",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: "Raleway",
              fontSize: 27.0,
            ),
          ),
        ),
      ),
    );
  }
}
