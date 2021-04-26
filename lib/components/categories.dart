import 'package:alluredesigns/screens/categories/lehenga.dart';
import 'package:flutter/material.dart';

//================MY OWN IMPORTS=========================
import 'package:alluredesigns/components/constants.dart';
import 'package:alluredesigns/screens/categories/bridalwears.dart';
import 'package:alluredesigns/screens/categories/casualwears.dart';
import 'package:alluredesigns/screens/categories/kids.dart';
import 'package:alluredesigns/screens/categories/kurta.dart';
import 'package:alluredesigns/screens/categories/dailywears.dart';
import 'package:alluredesigns/screens/categories/saree.dart';
import 'package:alluredesigns/screens/categories/churidar.dart';
import 'package:alluredesigns/screens/categories/anarkali.dart';
import 'package:alluredesigns/screens/categories/partywears.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: ScrollPhysics(),
      itemCount: kCategoryList.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: (MediaQuery.of(context).size.width / 550.0),
      ),
      itemBuilder: (BuildContext context, int index) {
        return SingleCategory(
          categoryName: kCategoryList[index]['name'],
          categoryPicture: kCategoryList[index]['picture'],
        );
      },
    );
  }
}

class SingleCategory extends StatefulWidget {
  final categoryName;
  final categoryPicture;

  SingleCategory({
    @required this.categoryName,
    @required this.categoryPicture,
  });

  @override
  _SingleCategoryState createState() => _SingleCategoryState();
}

class _SingleCategoryState extends State<SingleCategory> {
  void categoryNavigationCategoryScreen() {
    if (widget.categoryName == 'Bridal Wears') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => BridalScreen(),
        ),
      );
    } else if (widget.categoryName == 'Casual Wears') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => CasualScreen(),
        ),
      );
    } else if (widget.categoryName == 'Party Wears') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => PartyScreen(),
        ),
      );
    } else if (widget.categoryName == 'Kids Wear') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => KidsScreen(),
        ),
      );
    } else if (widget.categoryName == 'Daily Wears') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DailyScreen(),
        ),
      );
    } else if (widget.categoryName == 'Sarees') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => SareeScreen(),
        ),
      );
    } else if (widget.categoryName == 'Churidars') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ChuridarScreen(),
        ),
      );
    } else if (widget.categoryName == 'Anarkali') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => AnarkaliScreen(),
        ),
      );
    } else if (widget.categoryName == 'Lehenga') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => LehengaScreen(),
        ),
      );
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => KurtaScreen(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: GestureDetector(
        onTap: () {
          categoryNavigationCategoryScreen();
        },
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                widget.categoryPicture,
              ),
              fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(20.0),
            ),
            color: Colors.white,
          ),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Stack(
              children: [
                Container(
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: Colors.black38,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(
                        20.0,
                      ),
                      bottomLeft: Radius.circular(
                        20.0,
                      ),
                      topLeft: Radius.circular(
                        10.0,
                      ),
                      topRight: Radius.circular(
                        10.0,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 50.0,
                  child: Center(
                    child: Text(
                      widget.categoryName,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 23.0,
                        color: Colors.white,
                        fontFamily: "Raleway",
                        letterSpacing: 1.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
// Padding(
// padding: const EdgeInsets.all(5.0),
// child: Container(
// decoration: BoxDecoration(
// image: DecorationImage(
// image: AssetImage(
// widget.categoryPicture,
// ),
// fit: BoxFit.fill,
// ),
// borderRadius: BorderRadius.all(
// Radius.circular(20.0),
// ),
// color: Colors.white,
// ),
// child: Align(
// alignment: Alignment.bottomCenter,
// child: Padding(
// padding: const EdgeInsets.only(bottom: 20.0),
// child: Text(
// widget.categoryName,
// style: TextStyle(
// fontWeight: FontWeight.w700,
// fontSize: 20.0,
// color: Colors.white,
// fontFamily: "Cinzel",
// ),
// ),
// ),
// ),
// ),
// );
