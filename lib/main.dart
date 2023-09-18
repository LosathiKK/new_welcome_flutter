import 'package:flutter/material.dart';
import 'package:new_welcome_flutter/Pages/splash_page.dart';
import 'package:new_welcome_flutter/Pages/welcome_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => SplashPage(),
        '/home': (context) => WelcomePage()
      },

      debugShowCheckedModeBanner: false,
    );
  }
}

/*class SpashScreen extends StatefulWidget {
  const SpashScreen({Key? key}) : super(key: key);

  @override
  State<SpashScreen> createState() => _SpashScreenState();
}

class _SpashScreenState extends State<SpashScreen> {
  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logo: Image.network(
        'https://cdn4.iconfinder.com/data/icons/logos-brands-5/24/flutter-512.png'
      ),
        title: Text(
          "Title",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.grey.shade400,
        showLoader: true,
        loadingText: Text("Loading..."),
        navigator: WelcomePage(),
        durationInSeconds: 5,
      );
    
  }
}*/

