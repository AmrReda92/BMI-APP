import 'dart:math';

import 'package:bmi_app/screens/result_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: const Text("BMI Calculator"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 21 ,top: 20 ,bottom: 27 ,right: 21),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 180,
                    width: 155,
                    decoration: BoxDecoration(
                        color: Color(0xff24263B),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.male,size: 100,color: Colors.white,),
                        SizedBox(height: 20),
                        Text("Male",style: TextStyle(
                          color: Color(0xff8B8C9E),
                          fontSize: 24
                        ),),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 16,),
                Expanded(
                  child: Container(
                    height: 180,
                    width: 155,
                    decoration: BoxDecoration(
                        color: Color(0xff333244),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.female,size: 100,color: Colors.white,),
                        SizedBox(height: 20),
                        Text("Female",style: TextStyle(
                          color: Color(0xff8B8C9E),
                          fontSize: 24
                        ),),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 26,),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 189,
                    width: 319,
                    decoration: BoxDecoration(
                      color: Color(0xff333244),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Height",style: TextStyle(
                          color: Color(0xff8B8C9E),fontSize: 24,

                        ),),
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: "150",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 36,
                                  fontWeight: FontWeight.bold
                                ),

                              ),
                              TextSpan(
                                text: " cm",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                              ),
                              ),
                            ],
                          )
                        ),
                        Slider(value: 80,min: 0,max: 150,divisions: 150,activeColor: Color(0xffE83D67), onChanged: (value){}),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 29,),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 180,
                    width: 155,
                    decoration: BoxDecoration(
                      color: Color(0xff24263B),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                          Text(
                            "Weight",style: TextStyle(
                          color: Color(0xff8B8C9E),fontSize: 24,),
                          ),
                          Text(
                          "60",style: TextStyle(
                          color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RawMaterialButton(
                                onPressed: (){},
                              fillColor: Color(0xff8B8C9E),
                              shape: CircleBorder(),
                              constraints: BoxConstraints.tightFor(
                                width: 40,height: 42,
                              ),
                              child: Icon(Icons.remove,color: Colors.white,size: 32,),
                            ),
                            SizedBox(width: 42,),
                            RawMaterialButton(
                              onPressed: (){},
                              fillColor: Color(0xff8B8C9E),
                              shape: CircleBorder(),
                              constraints: BoxConstraints.tightFor(
                                width: 40,height: 42,
                              ),
                              child: Icon(Icons.add,color: Colors.white,size: 32,),
                            ),
                          ],
                        ),

                      ],
                    ) ,
                  ),
                ),
                SizedBox(width: 10,),
                Expanded(
                  child: Container(
                    height: 180,
                    width: 155,
                    decoration: BoxDecoration(
                      color: Color(0xff24263B),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Age",style: TextStyle(
                          color: Color(0xff8B8C9E),fontSize: 24,),
                        ),
                        Text(
                          "26",style: TextStyle(
                            color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RawMaterialButton(
                              onPressed: (){},
                              fillColor: Color(0xff8B8C9E),
                              shape: CircleBorder(),
                              constraints: BoxConstraints.tightFor(
                                width: 40,height: 42,
                              ),
                              child: Icon(Icons.remove,color: Colors.white,size: 32,),
                            ),
                            SizedBox(width: 42,),
                            RawMaterialButton(
                              onPressed: (){},
                              fillColor: Color(0xff8B8C9E),
                              shape: CircleBorder(),
                              constraints: BoxConstraints.tightFor(
                                width: 40,height: 42,
                              ),
                              child: Icon(Icons.add,color: Colors.white,size: 32,),
                            ),
                          ],
                        ),
                  
                  
                  
                      ],
                    ) ,
                  ),
                ),
              ],
            ),

          ],
        ),
      ),
      bottomNavigationBar: ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context){
                return ResultScreen();
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
          child: Text("Calculate",style: TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.bold
          ),),
        ),
      ),
    );
  }
}
