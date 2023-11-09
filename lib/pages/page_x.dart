import 'package:flutter/material.dart';
import 'package:navigations/core/values.dart';
import 'package:navigations/pages/page_end.dart';

class PageX extends StatelessWidget {
  const PageX({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: TotalValues().backgColor5,
      appBar: AppBar(
        title:  Text(
        TotalValues().homeText5, 
        style: TextStyle(
          color: TotalValues().backgColor4,
          fontWeight: FontWeight.bold, 
          fontSize: TotalValues().size),
          ),
          ),
      body: Center(child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: TotalValues().backgColor),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const PageEnd();
                },));
              }, 
              child: Text(
                TotalValues().nexText4,
                style: TextStyle(fontSize: TotalValues().size, color: TotalValues().backgColor4) ,
                ),
                ))
    );
  }
}