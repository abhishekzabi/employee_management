import 'package:employee_management/presentation/pages/entryscreen.dart';
import 'package:employee_management/presentation/pages/homepage.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Add a delay before navigating to the home page
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) =>EntryScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Your splash screen content (e.g., logo or app name)
            Center(child: Image.asset('assets/images/splashimage.png', height: 200, width: 200)),
            SizedBox(height: 2,),
           const  Text('Team Track', style: TextStyle(color: Colors.white, fontSize: 18,fontWeight: FontWeight.w300)),
            const SizedBox(height: 20),
            
          ],
        ),
      ),
    );
  }
}
