import 'dart:math';
import 'package:flutter/material.dart';
import 'bmi_result.dart';

class BmiKalkulator extends StatefulWidget {
const BmiKalkulator({Key? key}) : super(key: key);
@override
State<BmiKalkulator> createState() => _BmiKalkulatorState();
}
class _BmiKalkulatorState extends State<BmiKalkulator> {
  bool isMale = true;
  double height = 180.0;
  int weight = 40;
  int age = 18;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff2f7fa),
      appBar: AppBar(
        backgroundColor: Colors.white, centerTitle: true,
        title: Text("Kalkulator BMI",
          style: TextStyle( fontSize: 20.0,
            color: Colors.black),
        ),






      ),



    body: Column(
      children: [
      /*Male or Female Section*/
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
                      const Icon(
                      Icons.male,
                      size: 100.0,
                      color: Colors.black,
                     ),
                    const SizedBox(height: 15.0,),
                    Text( "MĘŻCZYZNA", style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black.withOpacity(0.8),
                      ),
                    ),
                    ]
                    ),
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0,),
                    color: isMale? Colors.blue : Colors.white,
                    ),
                  ),
            ),
        ),
        const SizedBox(width: 20.0,),
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
                const Icon(
                Icons.female,
                size: 100.0,
                color: Colors.black,
                ),
                const SizedBox(height: 15.0,),
              Text("KOBIETA", style: TextStyle( fontSize: 20.0,
              color: Colors.black.withOpacity(0.8),
              ),
            ),
          ]
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0,),
          color: !isMale? Colors.pink : Colors.white,
          ),
    ),
    ),
    ),
    ],
    ),
    ),
    ),

    /*Height Section*/






    Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
    ),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0,),
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text( "WZROST", style: TextStyle( fontSize: 20.0,
            color: Colors.black.withOpacity(0.8),
          ),
        ),
    Row(
      crossAxisAlignment: CrossAxisAlignment.baseline,
      textBaseline: TextBaseline.alphabetic,
      mainAxisAlignment: MainAxisAlignment.center,
      children:[
        Text(
          "${height.round()}",
          style: const TextStyle(
            color: Colors.black,
            fontSize: 60.0,
            fontWeight: FontWeight.w900,
          ),
        ),
        const SizedBox(width: 5.0,),
        const Text("CM", style: TextStyle(
          color: Colors.black,
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
          ),
        ),
      ] ,
    ),
      Slider(
        value: height,
        min: 80.0,
        max: 220.0,
        onChanged:(value){
        setState(() {
        height = value;
        });
       },
       activeColor: Colors.blue,
       inactiveColor: Color.fromARGB(255, 88, 89, 104),
       thumbColor: Colors.black,
        ),
      ]
    ),
    ),
    ),
    ),

    /*Weight and Age Section*/
      Expanded(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("WAGA (KG)",
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.black.withOpacity(0.8),
                            ),
                          ),
                          Text("${weight}",
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 60.0,
                            fontWeight: FontWeight.w900,
                            ),
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                            FloatingActionButton(
                            onPressed: (){
                              setState(() {
                                weight--;
                              });
                            },
                            heroTag: 'Weight-',
                            mini: true,
                            child: const Icon(
                              Icons.remove,
                            ),
                            ),
                            FloatingActionButton(
                            onPressed: (){
                              setState(() {
                                weight++;
                              });
                            },
                            heroTag: 'Weight+',
                            mini: true,
                            child: Icon(
                              Icons.add,
                            ),
                            ),
                            ],
                          ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0,),
                    color: Colors.white,
                  ),
               ),
             ),
              const SizedBox(width: 20.0,),
              Expanded(
                child: Container(
                  child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Text("WIEK", style: TextStyle( fontSize: 20.0,
                      color: Colors.black.withOpacity(0.8),
                            ),
                        ),
                    Text("${age}", style: const TextStyle(
                      color: Colors.black,
                      fontSize: 60.0,
                      fontWeight: FontWeight.w900,
                      ),
                      ),
                    Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                        FloatingActionButton(
                          onPressed: (){
                            setState(() {
                              age--;
                             });
                        },
                        heroTag: 'age-',
                        mini: true,
                        child: const Icon(
                          Icons.remove,
                        ),
                        ),
                        FloatingActionButton(
                          onPressed: (){
                            setState(() {
                              age++;
                            });
                          },
                        heroTag: 'age+',
                        mini: true,
                        child: const Icon(
                          Icons.add,
                        ),
                        ),
                    ],
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0,),
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      )
    ),

    /*Calculate Button Section*/
    Container (
      width: double.infinity,
      height: 75.0,
      color: Colors.red,
      child: MaterialButton(
        onPressed: (){
          double result = weight / pow(height/100, 2);
          print(result.round());
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => BMIResultScreen(
                result: result,
                age: age,
                isMale: isMale,
              ),
            )
          );
        },
      child: const Text("OBLICZ",
        style: TextStyle(
          color: Colors.white,
          fontSize: 25.0,
        ),
      ),
    ),
    )
    ],
    ),
    );
  }
}