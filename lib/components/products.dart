import 'package:flutter/material.dart';

//=================MY OWN IMPORTS==================
import 'package:alluredesigns/components/constants.dart';
import 'package:alluredesigns/screens/product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: ScrollPhysics(),
      itemCount: kProductList.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: (MediaQuery.of(context).size.width / 700.0),
      ),
      itemBuilder: (BuildContext context, int index) {
        return SingleProduct(
          productMaterial: kProductList[index]['material'],
          productDiscription: kProductList[index]['discrip'],
          productName: kProductList[index]['name'],
          productOldPrice: kProductList[index]['old_price'],
          productPicture: kProductList[index]['picture'],
          productPrice: kProductList[index]['price'],
          productDiscount: kProductList[index]['discount'],
        );
      },
    );
  }
}

class SingleProduct extends StatefulWidget {
  final productName;
  final productPicture;
  final productOldPrice;
  final productPrice;
  final productDiscount;
  final productDiscription;
  final productMaterial;

  SingleProduct({
    @required this.productName,
    @required this.productOldPrice,
    @required this.productPicture,
    @required this.productPrice,
    this.productDiscount,
    @required this.productDiscription,
    @required this.productMaterial,
  });

  @override
  _SingleProductState createState() => _SingleProductState();
}

class _SingleProductState extends State<SingleProduct> {
  bool favorite = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(2.0),
          child: Card(
            elevation: 0.0,
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Material(
              borderRadius: BorderRadius.all(
                Radius.circular(20.0),
              ),
              child: InkWell(
                borderRadius: BorderRadius.all(
                  Radius.circular(20.0),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProductDetails(
                        productMaterial: widget.productMaterial,
                        productDiscription: widget.productDiscription,
                        productName: widget.productName,
                        productOldPrice: widget.productOldPrice,
                        productPicture: widget.productPicture,
                        productPrice: widget.productPrice,
                        productDiscount: widget.productDiscount,
                      ),
                    ),
                  );
                },
                onDoubleTap: () {
                  setState(() {
                    if (favorite == false) {
                      favorite = true;
                    } else {
                      favorite = false;
                    }
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20.0,
                      ),
                      Expanded(
                        flex: 3,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            widget.productPicture,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(20.0),
                            bottomLeft: Radius.circular(20.0),
                          ),
                          child: Container(
                            color: Colors.white,
                            child: ListTile(
                              leading: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 12.0),
                                child: Text(
                                  widget.productName,
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                    color: kOurThemeColor,
                                    fontFamily: 'RalewayBold',
                                  ),
                                ),
                              ),
                              title: Text(
                                "₹${widget.productPrice}",
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                  color: kOurThemeColor,
                                  fontSize: 19.0,
                                  fontFamily: 'ReemKufi',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              subtitle: Padding(
                                padding: const EdgeInsets.only(top: 4.0),
                                child: Text(
                                  " ${widget.productOldPrice}",
                                  textAlign: TextAlign.end,
                                  style: TextStyle(
                                      color: Colors.grey.shade500,
                                      fontWeight: FontWeight.w800,
                                      fontFamily: 'ReemKufi',
                                      decoration: TextDecoration.lineThrough),
                                ),
                              ),
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
        ),
        favorite
            ? Positioned(
                top: 14.3,
                right: 15.0,
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
          top: 0.0,
          right: 0.0,
          child: GestureDetector(
            onTap: () {
              setState(() {
                if (favorite == true) {
                  favorite = false;
                } else {
                  favorite = true;
                }
              });
            },
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: favorite
                  ? Icon(
                      Icons.favorite,
                      color: Colors.white,
                      size: 20.0,
                    )
                  : Icon(
                      Icons.favorite,
                      color: Colors.grey,
                    ),
            ),
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
    );
  }
}
