import 'dart:math';

import 'package:bmi_calc/bmi%20result.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Bmi extends StatefulWidget {
  const Bmi({Key? key}) : super(key: key);

  @override
  State<Bmi> createState() => _BmiState();
}

class _BmiState extends State<Bmi> {
  bool isMale = true;
  double height = 120;
  int weight = 50;
  int age = 15;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.blue,
              Colors.blueAccent,
              Colors.lightBlue,
              Colors.lightBlueAccent,
              Colors.redAccent,
              Colors.red
            ],
            end: Alignment.topRight,
            begin: Alignment.bottomLeft)
          ),
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: (){
                            setState(() {
                              isMale = true;
                            });
                          },
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.male,
                                  size: 75,),
                                SizedBox(height: 15,),
                                Text('MALE',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30


                                  ),),
                              ],
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: isMale? Colors.blue.withOpacity(0.3) : Colors.white.withOpacity(0.2)
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,),
                      Expanded(
                        child: GestureDetector(
                          onTap: (){
                            setState(() {
                              isMale = false;
                            });
                          },
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.female,
                                  size: 75,),
                                SizedBox(height: 15,),
                                Text('FEMALE',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30


                                  ),),
                              ],
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: !isMale? Colors.blue.withOpacity(0.3) : Colors.white.withOpacity(0.2)
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white.withOpacity(0.2)

                    ),
                    child: Column(

                      mainAxisAlignment: MainAxisAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('HEIGHT',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30


                          ),),
                        Row(
                          textBaseline: TextBaseline.alphabetic,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('${height.round()}',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 45


                              ),),
                            Text('CM',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20


                              ),),

                          ],
                        ),
                        Slider(value:height,
                            max: 250,
                            min : 80,
                            onChanged: (value){
                              setState(() {
                                height = value;
                              });
                            }),

                      ],
                    ),
                  ),
                ),

              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(

                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white.withOpacity(0.2)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('WEIGHT',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30


                                ),),
                              Text('$weight',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30


                                ),),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FloatingActionButton(onPressed: (){
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                    heroTag: 'weight-',
                                    mini: true,
                                    child: Icon(Icons.remove),),
                                  FloatingActionButton(onPressed: (){
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                    heroTag: 'weight+',
                                    mini: true,
                                    child: Icon(Icons.add),)

                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 15,),
                      Expanded(
                        child: Container(

                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white.withOpacity(0.2)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('AGE',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30


                                ),),
                              Text('$age',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30


                                ),),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FloatingActionButton(onPressed: (){
                                    setState(() {
                                      age--;
                                    });
                                  },
                                    heroTag: 'age-',
                                    mini: true,
                                    child: Icon(Icons.remove),),
                                  FloatingActionButton(onPressed: (){
                                    setState(() {
                                      age++;

                                    });
                                  },
                                    heroTag: 'age+',
                                    mini: true,
                                    child: Icon(Icons.add),)

                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                color: Colors.white.withOpacity(0.2),
                height: 60,
                child: TextButton(onPressed: (){
                  var result = weight / pow(height/100,2);
                  print(result.round());
                  Navigator.push(context,
                      MaterialPageRoute(
                          builder: (context){
                            return BmiScreen(
                              age: age,
                              isMale: isMale,
                              result: result.round(),
                            );
                          }
                      ));
                },
                    child: Text('CALCULATE',
                      style: TextStyle(
                          color: Colors.black
                      ),)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
