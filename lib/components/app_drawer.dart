import 'package:alluredesigns/main.dart';
import 'package:alluredesigns/screens/cart_screen.dart';
import 'package:alluredesigns/screens/category_page.dart';
import 'package:alluredesigns/screens/wishlist_page.dart';
import 'package:flutter/material.dart';

//===============MY OWN IMPORTS==================
import 'package:alluredesigns/components/constants.dart';

class AppDrawer extends StatefulWidget {
  @override
  _AppDrawerState createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  bool isSwitched = false;

  void toggleSwitch(bool value) {
    if (isSwitched == false) {
      setState(() {
        isSwitched = true;
      });
    } else {
      setState(() {
        isSwitched = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(10.0),
        bottomRight: Radius.circular(10.0),
      ),
      child: Drawer(
        child: Container(
          color: kOurThemeColor,
          child: Column(
            children: [
              // UserAccountsDrawerHeader(
              //   decoration: BoxDecoration(
              //     color: kOurThemeColor,
              //   ),
              //   accountName: Text(
              //     "User",
              //     style: TextStyle(
              //       color: Color(0xFFFFFFFF),
              //       fontSize: 30.0,
              //       fontFamily: 'Raleway',
              //     ),
              //   ),
              //   currentAccountPicture: CircleAvatar(
              //     backgroundColor: Colors.transparent,
              //     backgroundImage: AssetImage('images/propic.png'),
              //   ),
              // ),
              // Text(
              //   "+910000000000",
              // ),
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 15.0,
                  top: 50.0,
                ),
                child: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  radius: 55.0,
                  backgroundImage: AssetImage('images/propic.png'),
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(
                "User",
                style: TextStyle(
                  fontSize: 30.0,
                  fontFamily: "DidactGothic",
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 10.0,
                ),
                child: Text(
                  "+910000000000",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: "DidactGothic",
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              FlatButton(
                onPressed: () {},
                child: ListTile(
                  title: Text(
                    "Dark Mode",
                    style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  leading: Icon(
                    Icons.brightness_6,
                    color: Color(0xFFFFFFFF),
                  ),
                  trailing: Transform.scale(
                    scale: 1,
                    child: Switch(
                      onChanged: toggleSwitch,
                      value: isSwitched,
                      activeColor: Colors.blue,
                      activeTrackColor: Colors.blue,
                      inactiveThumbColor: Colors.blue,
                      inactiveTrackColor: Colors.white,
                    ),
                  ),
                ),
              ),
              FlatButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CategoryScreen(),
                    ),
                  );
                },
                child: ListTile(
                  title: Text(
                    "Category",
                    style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  leading: Icon(
                    Icons.category,
                    color: Color(0xFFFFFFFF),
                  ),
                ),
              ),
              TextButton(
                child: ListTile(
                  title: Text(
                    "My Orders",
                    style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  leading: Icon(
                    Icons.shopping_basket,
                    color: Color(0xFFFFFFFF),
                  ),
                ),
                onPressed: () {},
              ),
              FlatButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => WishListScreen(),
                    ),
                  );
                },
                child: ListTile(
                  title: Text(
                    "Wishlist",
                    style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  leading: Icon(
                    Icons.favorite,
                    color: Color(0xFFFFFFFF),
                  ),
                ),
              ),
              FlatButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CartScreen(),
                    ),
                  );
                },
                child: ListTile(
                  title: Text(
                    "Shopping Cart",
                    style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  leading: Icon(
                    Icons.shopping_cart,
                    color: Color(0xFFFFFFFF),
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Align(
                  alignment: FractionalOffset.bottomLeft,
                  child: FlatButton(
                    onPressed: () {},
                    child: ListTile(
                      title: Text(
                        "About Us",
                        style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      leading: Icon(
                        Icons.help_outline,
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: FlatButton(
                  onPressed: () {},
                  child: ListTile(
                    title: Text(
                      "Sign Out",
                      style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    leading: Icon(
                      Icons.exit_to_app,
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
