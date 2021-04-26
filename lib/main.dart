import 'package:alluredesigns/OTP_Page.dart';
import 'package:alluredesigns/authentication.dart';
import 'package:badges/badges.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
//=================MY OWN IMPORTS=====================
import 'package:alluredesigns/screens/home_page.dart';
import 'package:alluredesigns/screens/category_page.dart';
import 'package:alluredesigns/screens/cart_screen.dart';
import 'package:alluredesigns/screens/wishlist_page.dart';
import 'package:alluredesigns/screens/user_profile.dart';
import 'package:alluredesigns/components/constants.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    MaterialApp(
      home: BottomNavBar(),
    ),
  );
}

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int myindex = 0;
  int _page = 0;
  int badgeNumber = 0;
  int changeBadge() {
    setState(() {
      badgeNumber = kCartProducts.length;
    });
    return badgeNumber;
  }

  final pageOption = [
    HomeScreen(),
    CategoryScreen(),
    CartScreen(),
    WishListScreen(),
    UserProfileScreen(),
  ];
  GlobalKey _bottomNavigationKey = GlobalKey();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Firebase.initializeApp();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: 0,
        items: <Widget>[
          Icon(
            Icons.home,
            size: 30,
            color: Colors.black,
          ),
          Icon(
            Icons.category,
            size: 30,
            color: Colors.black,
          ),
          changeBadge() == 0
              ? Icon(
                  Icons.shopping_cart,
                  size: 30,
                  color: Colors.black,
                )
              : Badge(
                  badgeContent: Text(changeBadge().toString()),
                  child: Icon(
                    Icons.shopping_cart,
                    size: 30,
                    color: Colors.black,
                  ),
                ),
          Badge(
            badgeContent: Text("1"),
            child: Icon(
              Icons.favorite,
              size: 30,
              color: Colors.black,
            ),
          ),
          Icon(
            Icons.person,
            size: 30,
            color: Colors.black,
          ),
        ],
        color: Colors.white,
        buttonBackgroundColor: kOurThemeColor,
        backgroundColor: Colors.transparent,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 350),
        onTap: (index) {
          setState(() {
            _page = index;
            myindex = index;
          });
        },
      ),
      // body: pageOption[_page],
      body: IndexedStack(
        index: myindex == _page ? myindex : 0,
        children: [
          HomeScreen(),
          CategoryScreen(),
          CartScreen(),
          WishListScreen(),
          UserProfileScreen(),
        ],
      ),
    );
  }
}
