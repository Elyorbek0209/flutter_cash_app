import 'package:flutter/material.dart';



class Home extends StatefulWidget {
  
  @override
  _HomeState createState() => _HomeState();

}




class _HomeState extends State<Home> {
  

  @override
  Widget build(BuildContext context) {
 
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


              subtitle: Padding(

                padding: const EdgeInsets.only(left: 100.0),

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

















