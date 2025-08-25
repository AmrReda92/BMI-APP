import 'package:bmi_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("BMI Calculator"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 22,right: 22,top: 25,bottom: 49),
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              child: Text("Your Result",style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 42,
                color: Colors.white
              ),
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xff333244),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 58,),
                    Text("Normal",style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff21BF73) ,
                    ),),
                    SizedBox(height: 33,),
                    Text("19.2",style: TextStyle(
                      fontSize: 64,
                      fontWeight: FontWeight.bold,
                      color: Colors.white ,
                    ),),
                    SizedBox(height: 60,),
                    Text("You Have a Normal Body Weight,",style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff8B8C9E) ,
                    ),),
                    Text("Good Job",style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff8B8C9E) ,
                    ),),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context){
              return HomeScreen();
            },
          ),
          );
        },
        style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xffE83D67),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30),)
            )
        ),
        child:
        Container(
          alignment: Alignment.center,
          height: 100,
          width: double.infinity,
          decoration:BoxDecoration(
            color: Color(0xffE83D67),
          ),
          child: Text("Re - Calculate",style: TextStyle(
              color: Colors.white,
              fontSize: 32,
              fontWeight: FontWeight.bold
          ),),
        ),
      ),
    );
  }
}
