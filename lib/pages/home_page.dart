import 'package:flutter/material.dart';

import 'package:flutter_cash_app/components.dart/alert.dart';





class Home extends StatefulWidget {
  
  @override
  _HomeState createState() => _HomeState();

}




class _HomeState extends State<Home> {
  

  @override
  Widget build(BuildContext context) {


    //Here we'll Define 'size' Variable below

    final mediaQuerydata = MediaQuery.of(context);

    final objectSize = mediaQuerydata.size.width;



 
    return Scaffold(


      //---------TOP PART of the APP BEGINS ---------

      appBar: AppBar(


        //#1 Here title of the App
        title: new Text("Flutter Cash App"),

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

      //---------ENDS TOP PART of the APP ---------


      

      //-------------------BODY PART------------------


      body: new Stack(

        children: <Widget>[

          Center(

            child: ListTile(


              title: new Icon(
                
                Icons.account_balance_wallet,
              
                size: 64.0,

                color: Colors.grey,
              
              ),


              subtitle: new Padding(

                padding: EdgeInsets.only(left: objectSize / 3.5 ),

                child: new Text(
                  
                  "Waste No Money",
                
                  style: TextStyle(fontSize: 16.0),
                
                ),

              ),

            ),

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
      

       //---------ENDS BOTTOM PART of the APP ---------

    );
  }
}

















