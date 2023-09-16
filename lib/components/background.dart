import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({Key? key}) : super(key: key); 
  //required Column body
  
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height , // Specify the desired height
      width: double.infinity, // Specify the desired width
      
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color.fromRGBO(30, 144, 255, 1.0), 
            Color.fromRGBO(255, 255, 255, 1.0)
          ], // Set your gradient colors
        ),
      ),
      
    );
    
  }
}
