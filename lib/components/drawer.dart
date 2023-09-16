
import 'package:flutter/material.dart';
import 'package:new_welcome_flutter/components/bottom_nav.dart';

import '../Menu/about_us.dart';
import '../Menu/help_center.dart';
import '../Menu/privacy.dart';
import '../Menu/profile_page.dart';
import '../Menu/setting.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer ({
    super.key, 
    required Container child
  });

  @override
  Widget build(BuildContext context) {
    return  Drawer(

      child: ListView(

        padding: EdgeInsets.zero,
        children: [
          
          DrawerHeader(
            decoration: BoxDecoration(
              color: Color.fromRGBO(15, 26, 88, 1.0),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),

            child: Column(
              children: [
                Image.asset(
                  'assets/images/logo.png',
                  width: 100,
                  height: 100,
                ),

                Text(
                  "YASHOD SILVA",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color.fromRGBO(217, 217, 217, 1.0),
              ),
              child: ListTile(
                iconColor: Colors.black,
                leading: Icon(
                  Icons.person_pin_rounded,
                ),
                title: Text(
                  "My Account",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ProfilePage()
                      )
                  );
                },
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color.fromRGBO(217, 217, 217, 1.0),
              ),
              child: ListTile(
                iconColor: Colors.black,
                leading: Icon(
                  Icons.people_alt_outlined,
                ),
                title: Text(
                  "About Us",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AboutUsPage()
                      )
                  );
                },
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color.fromRGBO(217, 217, 217, 1.0),
              ),
              child: ListTile(
                iconColor: Colors.black,
                leading: Icon(
                  Icons.privacy_tip_outlined,
                ),
                title: Text(
                  "Privacy & Policy",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PrivacyPage()
                      )
                  );
                },
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color.fromRGBO(217, 217, 217, 1.0),
              ),
              child: ListTile(
                iconColor: Colors.black,
                leading: Icon(
                  Icons.settings,
                ),
                title: Text(
                  "Settings",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SettingPage()
                      )
                  );
                },
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color.fromRGBO(217, 217, 217, 1.0),
              ),
              child: ListTile(
                iconColor: Colors.black,
                leading: Icon(
                  Icons.help_outline_outlined,
                ),
                title: Text(
                  "Help Center",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => HelpCenterPage()
                      )
                  );
                },
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(80, 50, 30, 0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromRGBO(15, 26, 88, 1.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => NavigationExample()
                    )
                );
              },

              child: ListTile(
                iconColor: Colors.white,

                leading: Icon(
                  Icons.arrow_forward_ios_rounded,
                ),
                title: Text(
                  "Back to Home",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),

              ),
            ),
          ),

        ],
      ),
    );
  }
}
