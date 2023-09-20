import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {

    return AppBar(
      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.topRight,
            colors: [ 
              Color.fromRGBO(30, 144, 255, 1.0), 
              Color.fromRGBO(255, 255, 255, 1.0)
            ],
          ),
        ),
      ),
      
        leading: Builder(
          builder: ((context) {
    
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              }, 
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              icon: Icon(
                Icons.menu
              ),
              color: Colors.black,
            );
          }
          ) 
        ),
          
          actions: [
    
            IconButton(
              onPressed: () {}, 
              icon: 
                Icon(
                  Icons.notifications_active_outlined
                ),
                color: Colors.black,
                // Image.asset(
                //   "assets/icons/notification.png",
                //   width: 24,
                //   height: 24,
                // ),

            ),
    
            IconButton(
              onPressed: () {}, 
              icon: 
                Icon(
                  Icons.person
                ),
                color: Colors.blue,
                // Image.asset(
                //   "assets/icons/profile.png",
                //   width: 30,
                //   height: 30,
                // ),
            ),
    
          ],
    );
  }
  
  @override
  // TODO: implement preferredSize

  Size get preferredSize => Size.fromHeight(kToolbarHeight);
  
}