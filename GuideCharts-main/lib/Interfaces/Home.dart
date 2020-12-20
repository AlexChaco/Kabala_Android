import 'package:interfaces/Interfaces/LoginPage.dart';
import 'package:flutter/material.dart';
import 'package:interfaces/Interfaces/Create_Recipe.dart';
import 'package:interfaces/Interfaces/homepage.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(0,0),
            child: Center(
              child: SingleChildScrollView(
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                  ),
                  margin: const EdgeInsets.only(left: 10, right: 10,top: 15),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            new RaisedButton(
                                color: Colors.cyan,
                                textColor: Colors.white,
                                child: Text(
                                  "Regresar",
                                  style: TextStyle(
                                    fontSize: 20.0,
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Login(),
                                  ));
                                }),
                            new RaisedButton(
                                color: Colors.cyan,
                                textColor: Colors.white,
                                child: Text(
                                  "recuento",
                                  style: TextStyle(
                                    fontSize: 20.0,
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => HomePage(),
                                  ));
                                }),
                          ],
                        ),
                        SizedBox(height: 5,),
                        Container(
                          child: FlatButton(
                            onPressed: (){
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => AddRecipePage(),
                              ));
                            },
                            child: Image.asset("assets/r1.jpg",)
                            ,),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          child: FlatButton(
                            onPressed: (){
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => AddRecipePage(),
                              ));
                            },
                            child: Image.asset("assets/r2.jpg",)
                            ,),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          child: FlatButton(
                            onPressed: (){
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => AddRecipePage(),
                              ));
                            },
                            child: Image.asset("assets/r3.jpg",)
                            ,),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          child: FlatButton(
                            onPressed: (){
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => AddRecipePage(),
                              ));
                            },
                            child: Image.asset("assets/r4.jpg",)
                            ,),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          child: FlatButton(
                            onPressed: (){
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => AddRecipePage(),
                              ));
                            },
                            child: Image.asset("assets/r5.jpg",)
                            ,),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          child: FlatButton(
                            onPressed: (){
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => AddRecipePage(),
                              ));
                            },
                            child: Image.asset("assets/r6.jpg",)
                            ,),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),

      floatingActionButton:
      FloatingActionButton(
        onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => AddRecipePage(),

          ));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
