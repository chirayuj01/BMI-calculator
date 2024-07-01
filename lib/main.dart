import 'dart:ui';
import 'package:classico/SplashScreen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:classico/Calculator.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Splashscreen(),
    );
  }
}
class HomePage extends StatefulWidget{
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var NameController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.indigo.shade900,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(

                  height: 395,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 45,

                      )
                    ]
                  ),
                  child: Image.asset('macos/assets/images/homepage_BMI.png',width: double.infinity,height: 600,)
              ),
              SizedBox(height: 40,),
              Container(
                height: 80,
                child: Text('BMI CALCULATOR',style: TextStyle(
                  fontSize: 43,
                  color: Colors.white,

                  fontWeight: FontWeight.bold,
                  fontFamily: 'PostSen',
                  shadows: [
                    Shadow(
                      color: Colors.black,
                      blurRadius: 50,
                      offset: Offset(2, 2)
                    )
                  ]
                ),),
              ),
              Container(
                height: 50,
                child: Text('"Quick and easy BMI check"',style: TextStyle(
                    fontSize: 23,
                    color: Colors.grey.shade300,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,

                    shadows: [
                      Shadow(
                          color: Colors.black,
                          blurRadius: 50,
                          offset: Offset(2, 2)
                      )
                    ]
                ),),
              ),
              SizedBox(height: 65,),
              Text('------- Your name please -------',style: TextStyle(
                fontSize: 17,
                color: Colors.white,
                fontWeight: FontWeight.bold,

                fontFamily: 'Playwrite'
              ),),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [

                    Icon(Icons.account_box,size: 60,color: Colors.white,),
                    SizedBox(width: 10,),
                    Expanded(
                      child: TextField(
                        controller: NameController,
                        style: TextStyle(color: Colors.white), // Text color
                        decoration: InputDecoration(
                          labelText: 'Enter your name',

                          hintStyle: TextStyle(color: Colors.white), // Hint text color
                          labelStyle: TextStyle(color: Colors.white), // Label text color
                           // Prefix icon color
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(21),
                            borderSide: BorderSide(
                              color: Colors.white, // Border color
                              width: 100 // Border width
                            ),
                          ),
                        ),
                      ),

                    )
                  ],
                ),
              ),
              SizedBox(height: 25,),
              Row(

                children: [
                  SizedBox(width: 20,),
                  Container(
                    width: 380,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.red.shade900,
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: TextButton(onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (Context)=>Calculator(NameController.text.toString()))
                      );
                    }, 
                        child: Text('CONTINUE',style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25

                        ),)
                    ),
                  ),
                ],
              ),
              Container(
                height: 25,
                color: Colors.indigo.shade900,

              )




            ],
          ),
        ),
      ),

    );
  }
}
