import 'package:flutter/material.dart';

class BMIResultScreen extends StatelessWidget
{
  final bool isMale;
  final double result;
  final int age;

  BMIResultScreen({required this.result, required this.age, required this.isMale});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff2f7fa),
      appBar: AppBar(
        backgroundColor: Colors.white, centerTitle: true,
        title: Text("Kalkulator BMI",
        style: TextStyle( fontSize: 20.0,
        color: Colors.black),),
       leading: IconButton(
           onPressed: (){
             Navigator.pop(context);
           },
           icon: Icon(
             Icons.arrow_back_ios, color: Colors.black,
           ),
         ),

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Płeć: ${isMale? 'Mężczyzna':'Kobieta'}",
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),

            Text(
              "Wiek: $age",
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,

              ),
            ),
            Text(
              " ",
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),

            Text(
              "Wynik: ${result.round()}",
              style: const TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,

              ),
            ),
            Text(
              " ",
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "         (<18) oznacza niedowagę ",
              style: const TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
                  color: Colors.blue
              ),
            ),
            Text(
              " (18.5-25) to wynik prawidłowy",
              style: const TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            Text(
              " (25-30) oznacza nadwagę ",
              style: const TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
                  color: Colors.orange,
              ),
            ),
            Text(
              "  (>30) oznacza otyłość ",
              style: const TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
                color: Colors.red
              ),
            ),
          ],
        ),
      ),
    );
  }
}