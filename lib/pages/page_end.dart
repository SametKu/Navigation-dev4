import 'package:flutter/material.dart';
import 'package:navigations/core/values.dart';

class PageEnd extends StatelessWidget {
  const PageEnd({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TotalValues().backgColor6,
      appBar: AppBar(title:  Text(
        TotalValues().homeText4, 
        style: TextStyle(
          color: TotalValues().backgColor4,
          fontWeight: FontWeight.bold, 
          fontSize: TotalValues().size),
          ),),
      body:Center(child: ElevatedButton(
        onPressed: (){
          Navigator.of(context).popUntil((route) => route.isFirst);
        }, 
        child: Text(
                TotalValues().backText,
                style: TextStyle(fontSize: TotalValues().size,) ,
                ),
                ),
                ),

    );
  }
}