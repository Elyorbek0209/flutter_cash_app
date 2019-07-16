import 'package:flutter/material.dart';

import 'package:flutter_cash_app/components.dart/alert.dart';

import 'package:flutter_cash_app/pages/home_page.dart';

import 'package:flutter_cash_app/pages/income.dart';

import 'package:flutter_cash_app/pages/category.dart';




class Expense extends StatefulWidget {

  @override
  _ExpenseState createState() => _ExpenseState();

}


class _ExpenseState extends State<Expense> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      
       appBar: AppBar(


        //#1 Here title of the App
        title: new Text("Expense"),

        //#2 Here top background color
        backgroundColor: Color(0xFFF47D15),

        centerTitle: false,

        elevation: 1.0,

        actions: <Widget>[


          //#3 Here '+' Icon inside the Action Widget
          new IconButton(
            
            icon: Icon(Icons.add),
          
            onPressed: (){


              //#4 Here popUp DialogBox Appears inside the showDialog
              showDialog(


                context: context,

                builder: (context) => new AlertDialog(


                  //#5 Here Title of the popUp Dialog
                  title: new Text("add"),

                  content: new Container(


                    height: 180.0,

                    child: Alert(),

                  ),

                )

              );

            },
          
          )

        ],

      ),





      //---------BOTTOM PART of the APP BEGINS ---------


      bottomNavigationBar:  new Container(

        color: Colors.white,


        child: Row(

          children: <Widget>[

            //# 1st element of the row
            Expanded(

              child: ListTile(

                title: new Text("Balance:"),

                subtitle: new Text("\$720"),


              ),

            ),


            //# 2nd element of the row
            Expanded(

              child: ListTile(

                title: new Text("Expence:"),

                subtitle: new Text(
                  
                  "\$230",
                
                  style: TextStyle(color: Colors.red),
                
                ),


              ),

            ),


            //# 3rd element of the row
            Expanded(

              child: new IconButton(

                icon: Icon(
                  
                  Icons.remove_red_eye, 
                
                  color:Color(0xFFF47D15)
                  
                ),


                onPressed: (){},


              ),

            )

          ],

        ),

      ),

    );
  }
}







