import 'package:flutter/material.dart';

import 'package:flutter_cash_app/pages/home_page.dart';


void main(List<String> args) {
  
  runApp( 
    
    new MaterialApp(

      //Here below code we'll remove debug icon from top right corner
      debugShowCheckedModeBanner: false,

      home: Home(),

    )
    
  );

}





