import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      
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

          backgroundColor: Colors.white,
          actions: [

            IconButton(
              onPressed: () {}, 
              icon: Image.asset(
                "assets/icons/notification.png",
                width: 24,
                height: 24,
              )
            ),

            IconButton(
              onPressed: () {}, 
              icon: Image.asset(
                "assets/icons/profile.png",
                width: 30,
                height: 30,
              ),
            ),

          ],
    );
  }
  
  @override
  // TODO: implement preferredSize

  Size get preferredSize => Size.fromHeight(kToolbarHeight);
  
}