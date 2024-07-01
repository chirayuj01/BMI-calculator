import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class roundbutton extends StatelessWidget{
  final Color? colour;
  final String text;
  final double size;
  final VoidCallback? callback;
  final double btnsize;
  roundbutton({
    required this.colour,
    required this.text,
    required this.size,
    required this.callback,
    required this.btnsize,
});
  @override
  Widget build(BuildContext context) {

    return TextButton(onPressed: (){
      callback!();
    }, child: Container(
      decoration: BoxDecoration(
        ),
      child: Container(
        height: btnsize,
        width: btnsize,
        decoration: BoxDecoration(
            color: Colors.yellow,
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50),bottomRight: Radius.circular(50))
        ),
        child: Center(
          child: Text(text,style: TextStyle(
            fontSize: this.size,
            color: colour,

          ),),
        ),
      ),


    ));
  }

}