import 'dart:math';

import 'package:bmi_app/screens/result_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {

   const HomeScreen({super.key,});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isMale =true;
  int sliderValue =150;
  double height = 100;
  int weight =60;
  int age =26;
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
              //inkwell
              //ontap
              children: [
                Expanded(
                  child: InkWell(
                    onTap: (){
                      setState(() {
                        isMale =true;
                      });
                    },
                    child: Container(
                      height: 180,
                      width: 155,
                      decoration: BoxDecoration(
                          color: isMale?  Color(0xffE83D67) : Color(0xff24263B),
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
                ),
                SizedBox(width: 16,),
                Expanded(
                  child: InkWell(
                    onTap: (){
                      setState(() {
                        isMale=false;
                      });
                    },
                    child: Container(
                      height: 180,
                      width: 155,
                      decoration: BoxDecoration(
                          color: isMale==false ? Color(0xffE83D67): Color(0xff333244),
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
                                text: sliderValue.toString(),
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
                        Slider(
                            value: sliderValue.toDouble(),min: 0,max: 230, activeColor: Color(0xffE83D67),
                            onChanged: (value){
                              setState(() {
                                sliderValue=value.toInt();
                              });
                            }),

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
                          weight.toString(),style: TextStyle(
                          color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                            CircleAvatar(
                              backgroundColor: Color(0xff8B8C9E),
                              radius: 24,
                              child: InkWell(
                                onTap: (){
                                  setState(() {
                                    weight--;
                                  });
                                },
                                  child: Icon(Icons.remove,color: Colors.white,)
                              ),
                            ),
                            SizedBox(width: 42,),
                            CircleAvatar(
                              backgroundColor: Color(0xff8B8C9E),
                              radius: 24,
                              child: InkWell(
                                onTap: (){
                                  setState(() {
                                    weight++;
                                  });
                                },
                                  child: Icon(Icons.add,color: Colors.white,)),
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
                          age.toString(),style: TextStyle(
                            color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              backgroundColor: Color(0xff8B8C9E),
                              radius: 24,
                              child: InkWell(
                                onTap: (){
                                  setState(() {
                                    age--;
                                  });
                                },
                                  child: Icon(Icons.remove,color: Colors.white,)),
                            ),
                            SizedBox(width: 42,),
                            CircleAvatar(
                            backgroundColor: Color(0xff8B8C9E),
                            radius: 24,
                            child: InkWell(
                              onTap: (){
                                setState(() {
                                  age++;
                                });
                              },
                                child: Icon(Icons.add,color: Colors.white,)),
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
        bottomNavigationBar: InkWell(
         onTap: (){
         Navigator.of(context).push(MaterialPageRoute(builder: (context){
           return ResultScreen(
             height:sliderValue,
             weight:weight,
           );
         }
         )
         );
         },
        child:Container(
          alignment: Alignment.center,
          height: 100,
          width: double.infinity,
          decoration:BoxDecoration(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
            color: Color(0xffE83D67),
          ),
          child: Text("Calculate",style: TextStyle(
              color: Colors.white,
              fontSize: 32,
              fontWeight: FontWeight.bold
          ),
          ),
        ),
        ),
    );
  }
}

/*
set state
ismale
 */