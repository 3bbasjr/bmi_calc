import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class BmiScreen extends StatelessWidget {
  final int result;
  final bool isMale;
  final int age;
  BmiScreen({
    required this.result,
    required this.age,
    required this.isMale,
});

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
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Gender : ${isMale ? 'MALE' : 'FEMALE'}',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold
                ),),
                Container(
                  width: double.infinity,
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white.withOpacity(0.1)
                  ),
                  child: Center(
                    child: Text('Result : $result',
                      style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold
                      ),),
                  ),
                ),
                Text('Age : $age',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                  ),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
