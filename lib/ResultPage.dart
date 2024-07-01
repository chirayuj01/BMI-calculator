import 'package:classico/Calculator.dart';
import 'package:classico/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Resultpage extends StatefulWidget{
  var statusofuser;
  var statuscolor;
  var BMIofuser;
  var Rangeofuser;
  var genderofuser;
  var Ageofuser;


  Resultpage(this.statusofuser,this.statuscolor,this.BMIofuser,this.Rangeofuser,this.Ageofuser,this.genderofuser);
  @override
  State<Resultpage> createState() => _ResultpageState();
}

class _ResultpageState extends State<Resultpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI RESULT',style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold
        ),),
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          children: [
            SizedBox(height: 20,),
            Center(
              child: Text('Your BMI result',style: TextStyle(
                color: Colors.white,

                fontSize: 45,

              ),),

            ),
            SizedBox(height: 20,),
            Container(
              width: 370,
              height: 550,
              decoration: BoxDecoration(
                color: Colors.indigo.shade900,
                borderRadius: BorderRadius.circular(21)
              ),
              child: Column(
                children: [
                  Container(
                      height: 240,
                    width: 570,
                    child: Icon(Icons.account_box,size: 250,color: widget.statuscolor,),
                  ),
                  Text('${widget.statusofuser}',style: TextStyle(
                      color: widget.statuscolor,
                      fontSize: 40,
                      fontWeight: FontWeight.bold

                  ),),
                  Text('${widget.BMIofuser.toStringAsFixed(2)??'N/A'}',style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,

                    fontWeight: FontWeight.bold
                  ),),

                  SizedBox(height: 20,),
                  Text('  Age : ${widget.Ageofuser} year old',style: TextStyle(
                    color: Colors.white,
                    fontSize: 23
                  ),),
                  SizedBox(height: 3,),
                  Text('Gender : ${widget.genderofuser??'N/A'}',style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 23,

                  ),),
                  SizedBox(height: 3,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('${widget.statusofuser} range: ',style: TextStyle(
                        color: Colors.white,
                        fontSize: 23,

                      ),),
                      Text('${widget.Rangeofuser}',style: TextStyle(
                        color: widget.statuscolor,
                        fontSize: 23

                      ),)
                    ],
                  ),



                ],
              ),
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.red.shade900,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (Context)=>HomePage()));



                  },
                  child: Text(
                    'Re-Calculate your BMI',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),

      ),


    );
  }
}