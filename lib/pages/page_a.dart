import 'package:flutter/material.dart';
import 'package:navigations/core/values.dart';
import 'package:navigations/pages/page_b.dart';

class PageA extends StatelessWidget {
  const PageA({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: TotalValues().backgColor2,
      appBar: AppBar(title:  Text(
        TotalValues().homeText2, 
        style: TextStyle(
          fontWeight: FontWeight.bold, 
          fontSize: TotalValues().size),
          ),
          ),
      body: Center(child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: TotalValues().backgColor),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const PageB();
                },));
              }, 
              child: Text(
                TotalValues().nexText3,
                style: TextStyle(fontSize: TotalValues().size, color: TotalValues().backgColor2) ,
                ),
                ))
    );
  }
}