import 'package:alluredesigns/screens/MyOrdersPage.dart';
import 'package:alluredesigns/screens/TrackOrderPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//===================MY OWN IMPORTS========================
import 'package:alluredesigns/components/constants.dart';
import 'package:alluredesigns/components/bars.dart';
import 'package:alluredesigns/screens/user_edit_profile.dart';
import 'package:alluredesigns/screens/user_shipping_address.dart';
import 'package:alluredesigns/fireflutter.dart';

void main() {
  runApp(
    MaterialApp(
      home: UserProfileScreen(),
    ),
  );
}

class UserProfileScreen extends StatefulWidget {
  @override
  _UserProfileScreenState createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        elevation: 0.0,
        iconTheme: kAppBarIconTheme,
        centerTitle: true,
        backgroundColor: Color(0xFFFFFFFF),
        title: Text(
          "PROFILE",
          style: kAppBarTitleStyle,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Container(
          color: Colors.white,
          height: MediaQuery.of(context).size.height,
          child: Center(
            child: ListView(
              children: [
                SizedBox(
                  height: 20.0,
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        bottom: 20.0,
                        top: 20.0,
                      ),
                      child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: 70.0,
                        backgroundImage: AssetImage('images/propic.png'),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  "User",
                  style: TextStyle(
                    fontSize: 25.0,
                    fontFamily: "DidactGothic",
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 50.0,
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => UserEditProfile(),
                      ),
                    );
                  },
                  child: Bars(
                    icons: Icons.edit,
                    text: 'Edit Profile',
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => UserShippingAddress(),
                      ),
                    );
                  },
                  child: Bars(
                    icons: Icons.location_on,
                    text: 'Shipping Address',
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MyOrdersScreen(),
                      ),
                    );
                  },
                  child: Bars(
                    icons: Icons.event_note,
                    text: 'My Orders',
                  ),
                ),
                MaterialButton(
                  onPressed: () {},
                  child: Bars(
                    icons: Icons.navigation,
                    text: 'Track My Order',
                  ),
                ),
                MaterialButton(
                  onPressed: () {},
                  child: Bars(
                    icons: Icons.library_books,
                    text: 'Privacy Policy',
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginPage(),
                      ),
                    );
                  },
                  child: Bars(
                    icons: Icons.content_paste,
                    text: 'Terms & Conditions',
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10.00, bottom: 0.00),
                      child: ListTile(
                        leading: Icon(Icons.person_add,
                            size: 35.0, color: Colors.grey.shade600),
                        title: Text(
                          'Follow us on Social Media',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                            fontSize: 20.00,
                          ),
                        ),
                        trailing: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            iconSize: 40.0,
                            items: [
                              DropdownMenuItem(
                                child: Text("Facebook"),
                                value: 'Facebook',
                              ),
                              DropdownMenuItem(
                                child: Text("Instagram"),
                                value: 'Instagram',
                              ),
                            ],
                            onChanged: (value) {
                              print(value);
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Bars(
                  icons: Icons.star_border,
                  text: 'Rate Us On PlayStore',
                ),
                Bars(
                  icons: Icons.live_help,
                  text: 'About Us',
                ),
                Bars(
                  icons: Icons.exit_to_app,
                  text: 'Sign Out',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
