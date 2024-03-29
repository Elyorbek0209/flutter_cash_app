import 'package:flutter/material.dart';

import 'package:flutter_cash_app/components.dart/alert.dart';

import 'home_page.dart';






class Category extends StatefulWidget {

  @override
  _CategoryState createState() => _CategoryState();

}



class _CategoryState extends State<Category> {

  @override
  Widget build(BuildContext context) {


    return Scaffold(

       //---------TOP PART of the APP BEGINS ---------

      appBar: AppBar(


        //#1 Here title of the App
        title: new Text("Category"),

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
          
          ),



           //---------Here Below BUTTON FORWARD TO THE HOME PAGE ----------

          new IconButton(
            
            icon: Icon(Icons.home),
            
            onPressed: (){


              //Here we'll move to below given Class's page
              Navigator.push(

                context,

                new MaterialPageRoute(

                  builder: (context) => new Home(),

                )

              );

            },

          )

          //---------------ENDS----------------


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


















