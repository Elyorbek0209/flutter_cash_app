import 'package:flutter/material.dart';


class Alert extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Container(

      child: new Column(


        children: <Widget>[



          //------------ADD BUTTON for NEW INCOME -----

          new Row(


            children: <Widget>[


              //#6 Here Dollar Icon inside the popUp Dialog
              new Padding(
                
                padding: EdgeInsets.all(4.0),
                
                child: Icon(Icons.attach_money),
              
              ),


              //#7 Here 'Income' Icon inside the popUp Dialog
              new Padding(

                padding: EdgeInsets.all(2.0),

                child: new MaterialButton(

                  onPressed: (){},

                  child: new Text("Income"),

                ),

              )
              

            ],

          ),

          //------------ADD BUTTON for NEW INCOME  -----




            //------------Here NEW EXPENCE ADD BUTTON  -----

          new Row(


            children: <Widget>[


              //#8 Here Dollar Icon inside the popUp Dialog
              new Padding(
                
                padding: EdgeInsets.all(4.0),
                
                child: Icon(Icons.money_off),
              
              ),


              //#9 Here 'Income' Icon inside the popUp Dialog
              new Padding(

                padding: EdgeInsets.all(2.0),

                child: new MaterialButton(

                  onPressed: (){},

                  child: new Text("Expence"),

                ),

              )
              

            ],

          ),

          //------------NEW EXPENCE ADD BUTTON ENDS-----



          //------------NEW CATTEGORY ADD BUTTON  -----

          new Row(


            children: <Widget>[


              //#10 Here Dollar Icon inside the popUp Dialog
              new Padding(
                
                padding: EdgeInsets.all(4.0),
                
                child: Icon(Icons.dashboard),
              
              ),


              //#11 Here 'Income' Icon inside the popUp Dialog
              new Padding(

                padding: EdgeInsets.all(2.0),

                child: new MaterialButton(

                  onPressed: (){},

                  child: new Text("Category"),

                ),

              )
              

            ],

          )

          //------------NEW CATTEGORY ADD BUTTON ENDS-----



        ],

      ),

      
    );
  }
}


