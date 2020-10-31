import 'package:app/pages/kabala_año.dart';
import 'package:app/pages/tonica_fundamental.dart';
import 'package:app/pages/urgencia.dart';
import 'package:flutter/material.dart';
import 'package:app/pages/Tonica_Dia.dart';
import 'package:app/pages/acontecimiento.dart';

class opciones extends StatefulWidget {
  final String name;
  final String lastname;
  final int day,month,year;

  opciones (this.name,this.lastname,this.day,this.month,this.year);
  @override
  _opcionesState createState() => _opcionesState();
}

class _opcionesState extends State<opciones> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        backgroundColor: Colors.indigo[800],
        titleSpacing: 10,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'OPCIONES',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            SizedBox(width: 50,)
          ],
        ),
        centerTitle: true,
      ),
      body:Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget> [
            Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      RaisedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => urgencia(widget.day,widget.month,widget.year),
                          ));
                        }, // Refer step 3
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(height: 50,),
                            Text(
                              'Urgencia Interior',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        color: Colors.indigo[800],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      RaisedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => tonica_fundamental(widget.day,widget.month,widget.year,widget.name,widget.lastname),
                          ));
                        }, // Refer step 3
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(height: 50,),
                            Text(
                              'Tónica Fundamental',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        color: Colors.indigo[800],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      RaisedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => tonica_dia(widget.day,widget.month,widget.year,widget.name,widget.lastname),
                          ));
                        }, // Refer step 3
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(height: 50,),
                            Text(
                              'Tónica del Día',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        color: Colors.indigo[800],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      RaisedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => acontecimiento_dia(widget.day,widget.month,widget.year,widget.name,widget.lastname),
                          ));
                        }, // Refer step 3
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(height: 50,),
                            Text(
                              'Acontecimiento del Día',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        color: Colors.indigo[800],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      RaisedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => kabalaOfYear(widget.year),
                          ));
                        }, // Refer step 3
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(height: 50,),
                            Text(
                              'Cábala del Año',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        color: Colors.indigo[800],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

