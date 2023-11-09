import 'package:flutter/material.dart';
import 'package:navigations/core/values.dart';
import 'package:navigations/pages/page_a.dart';
import 'package:navigations/pages/page_x.dart';

class HomePage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: TotalValues().backgColor,
      appBar: AppBar(
      title: Text(
      TotalValues().homeText,
      style:  TextStyle(
        fontWeight: FontWeight.bold, 
        fontSize: TotalValues().size),),
        ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: TotalValues().btnColor),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const PageA();
                },));
              },
               child: Text(
                TotalValues().nexText, 
                style: TextStyle(fontSize: TotalValues().size),
                ),
                ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: TotalValues().btnColor),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const PageX();
                },));
              }, 
              child: Text(
                TotalValues().nexText2,
                style: TextStyle(fontSize: TotalValues().size) ,
                ),
                )
          ],
        ),
      ),
    );
  }
}