import 'package:bmi_app/models/result_info.dart';
import 'package:bmi_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatefulWidget {
  final height ;
  final weight;
  const ResultScreen({super.key,required this.weight,required this.height});

  ResultInfo bmiText (double value){
    if(value<=18.4) {
      return ResultInfo(text: "Underweight", color: Colors.orange, description: "Working towards a healthier weight range could strengthen your immune system and help prevent bone fractures.");
    }
    else if(value>18.5&&value<=24.9){
      return ResultInfo(text: "Normal", color: Colors.green, description: "You Have a Normal Body Weight,Good job");
    }
    else if(value>=25&&value<=39.9){
      return ResultInfo(text: "Overweight", color: Colors.amber, description: "If you want to lose some weight, working towards a healthier weight range could reduce the risk of long-term conditions such as type 2 diabetes and heart disease.");
    }
    else{
      return ResultInfo(text: "Obese", color: Colors.red, description: "An obese result suggests you are carrying too much weight and you would benefit from making some healthy changes.");
    }
  }


  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {

    double heightInMeters = widget.height / 100;
    double bmiValue = widget.weight / (heightInMeters * heightInMeters);
    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI Calculator"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 22,right: 22,top: 25,bottom: 49),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Your Result",textAlign: TextAlign.left,style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 42,
                color: Colors.white
            ),
            ),
            SizedBox(height: 25,),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 30,horizontal: 16),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xff333244),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  children: [
                    Text(widget.bmiText(bmiValue).text,style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: widget.bmiText(bmiValue).color ,
                    ),),
                    SizedBox(height: 33,),
                    Text(bmiValue.toStringAsFixed(2),style: TextStyle(
                      fontSize: 64,
                      fontWeight: FontWeight.bold,
                      color: Colors.white ,
                    ),),
                    SizedBox(height: 60,),
                    Text(widget.bmiText(bmiValue).description,style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff8B8C9E) ,
                    ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: InkWell(
        onTap: (){
          Navigator.of(context).pop(MaterialPageRoute(builder: (context){
            return HomeScreen();
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
          child: Text("Re-Calculate",style: TextStyle(
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
