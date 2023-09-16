import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:new_welcome_flutter/Departments/css_dept_page.dart';
import 'package:new_welcome_flutter/Departments/dns_dept-page.dart';
import 'package:new_welcome_flutter/Departments/ds_dept_page.dart';
import 'package:new_welcome_flutter/Departments/mis_dept_page.dart';
import 'package:new_welcome_flutter/components/app_bar.dart';


// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  int currentIndex = 0;

  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: MyAppBar(),

      drawer: MyDrawer(
        child: Container(),
      ),

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,

            children: [
              SizedBox(
                height: 200,
                width: double.infinity,
                
                child: CarouselSlider(
                  items: [
                    for (int i = 0; i < 1; i++)
                    Container(
                      alignment: Alignment.topCenter,
                      margin: 
                        EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(123, 193, 255, 1.0),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.25),
                            spreadRadius: 0,
                            blurRadius: 4,
                            offset:Offset(0, 4)
                          ) 
                        ]
                      ),

                      child: Column(
                        children: [
                          Text("Our Vision",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          Image.asset(
                            'assets/icons/vision.png'
                          ),

                          Text(
                            "To be Sri Lanka's best-performing graduate school and to be recognized internationally.",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                          ),
                        ],
                      ),
                    ),

                    Container(
                      alignment: Alignment.topCenter,
                      margin: 
                        EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(123, 193, 255, 1.0),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.25),
                            spreadRadius: 0,
                            blurRadius: 4,
                            offset:Offset(0, 4)
                          ) 
                        ]
                      ),

                      child: Column(
                        children: [
                          Text(
                            "Our Mission",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                          ),

                          Image.asset(
                            'assets/icons/mission.png',
                          ),

                          Text(
                            "To develop globally competitive and responsible graduates that businesses demand, working in synergy with all our stakeholders and contributing to our society.",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                          ),

                        ],
                      ),
                    )
                  ], 
                  options: CarouselOptions(
                    onPageChanged: (index, reason) {

                    },
                    
                    autoPlay: true
                  ),
                ),
              ),

              Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 0; i < 2; i++)
                  Container(
                    height: 13,
                    width: 13,
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: currentIndex == i ? Colors.blue : Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 1,
                              blurRadius: 3,
                              offset: Offset(2, 2)
                          )
                        ]
                    ),
                  )
              ],
            ),

            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Column(
                
                children: [
            
                  Text(
                    "Our Departments",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                  ),
            
                  Padding(
                    padding: const EdgeInsets.fromLTRB(2, 2, 2, 2),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [

                        Padding(
                          padding: const EdgeInsets.fromLTRB(5, 2, 5, 2),

                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              side: BorderSide(
                                width: 1, 
                                color: Colors.black,
                              ),
                              shape: RoundedRectangleBorder( //to set border radius to button
                                  borderRadius: BorderRadius.circular(30)
                              ),
                              padding: EdgeInsets.all(2)
                            ),
                            onPressed: () { 
                              Navigator.push(
                                context,
                                  MaterialPageRoute(
                                    builder: (context) => CsseDepPage()
                                  )
                              );
                             },
                            child: Image.asset(
                              'assets/images/csse.png',
                              width: 160,
                              height: 160,
                            ),
                          ),
                        ),
                  
                        Padding(
                          padding: const EdgeInsets.fromLTRB(5, 2, 5, 2),

                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              side: BorderSide(
                                width: 1,
                                color: Colors.black,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)
                              ),
                              padding: EdgeInsets.all(2)
                            ),
                            onPressed: () { 
                              Navigator.push(
                                context, 
                                  MaterialPageRoute(
                                    builder: (context) => IssDepPage()
                                  )
                              );
                             },
                            child: Image.asset(
                              'assets/images/iss.png',
                              width: 160,
                              height: 160,
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [

                        Padding(
                          padding: const EdgeInsets.fromLTRB(5, 2, 5, 2),
                          
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              side: BorderSide(
                                width: 1, 
                                color: Colors.black,
                              ),
                              shape: RoundedRectangleBorder( //to set border radius to button
                                  borderRadius: BorderRadius.circular(30)
                              ),
                              padding: EdgeInsets.all(2)
                            ),
                            onPressed: () { 
                              Navigator.push(
                                context, 
                                  MaterialPageRoute(
                                    builder: (context) => DnsDeptPage()
                                  )
                              );
                             },
                            child: Image.asset(
                              'assets/images/d.png',
                              width: 160,
                              height: 160,
                            ),
                          ),
                        ),
                  
                        Padding(
                          padding: const EdgeInsets.fromLTRB(5, 2, 5, 2),

                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              side: BorderSide(
                                width: 1, 
                                color: Colors.black,
                              ),
                              shape: RoundedRectangleBorder( //to set border radius to button
                                  borderRadius: BorderRadius.circular(30)
                              ),
                              padding: EdgeInsets.all(2)
                            ),
                            onPressed: () { 
                              Navigator.push(
                                context, 
                                  MaterialPageRoute(
                                    builder: (context) => DsDeptPage()
                                  )
                              );
                             },
                            child: Image.asset(
                              'assets/images/data.png',
                              width: 160,
                              height: 160,
                            ),
                          ),
                        ),

                      ],
                    ),
                  )

                ],
              ),
            ),
            
            ],
          ),
        ),

        //bottomNavigationBar: Home(),
        
        /*
        bottomNavigationBar: NavigationBar (
          onDestinationSelected: (int index) {
            
          },
          indicatorColor: Colors.amber[800],
          
          destinations: const <Widget>[
            NavigationDestination(
              //selectedIcon: Icon(Icons.people_alt_outlined),
              icon: Icon(Icons.people_alt_outlined),
              label: 'Club',
            ),
            NavigationDestination(
              icon: Icon(Icons.domain_verification),
              label: 'Schedule',
            ),
            NavigationDestination(
              //selectedIcon: Icon(Icons.home_outlined),
              icon: Icon(Icons.home_outlined),
              label: 'Home',
            ),
            NavigationDestination(
              icon: Icon(Icons.calendar_month_outlined), 
              label: 'Reservation',
            ),
            NavigationDestination(
              icon: Icon(Icons.feedback_outlined), 
              label: 'Request'
            ),
          ],
      ),*/

    );
  }
}

/*class NavigationBarApp extends StatelessWidget {
  const NavigationBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: NavigationExample(),
    );
  }
}*/
