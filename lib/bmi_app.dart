import 'package:bmi_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

class BmiApp extends StatelessWidget {
  const BmiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     theme: ThemeData(
       scaffoldBackgroundColor: Color(0xff1C2135),
       appBarTheme: AppBarTheme(
         elevation: 4,
         shadowColor: Colors.black54,
         centerTitle: true,
         titleTextStyle: TextStyle(
             color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
         ),
         backgroundColor: Color(0xff24263B),
       )
     ),
     home: HomeScreen(),

    );
  }
}
