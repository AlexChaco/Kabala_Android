
import 'package:flutter/material.dart';
import 'package:interfaces/Interfaces/DiagramBar.dart';
import 'package:interfaces/Interfaces/LoginPage.dart';
import 'package:interfaces/Interfaces/PieDataChart.dart';
import 'package:interfaces/Interfaces/register_page.dart';
import 'package:interfaces/Interfaces/Recovery.dart';
import 'package:interfaces/Interfaces/Create_Recipe.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:interfaces/generated/l10n.dart';
import 'package:interfaces/Interfaces/RadarChart.dart';
import 'package:interfaces/Interfaces/LineChart.dart';
import 'package:interfaces/Interfaces/homepage.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Login(),
      title: 'Flutter Intl Example',

      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        S.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
    );
  }
}
class opciones extends StatefulWidget {

  @override
  _opcionesState createState() => _opcionesState();
}

class _opcionesState extends State<opciones> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
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
                            builder: (context) => Login(),
                          ));
                        },// Refer step 3
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(height: 50,),
                            Text(
                              S.of(context).menuLogin,
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        color: Colors.cyan,
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
                            builder: (context) => RegisterPage(),
                          ));
                        }, // Refer step 3
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(height: 50,),
                            Text(
                              S.of(context).menuRegister,
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        color: Colors.cyan,
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
                            builder: (context) => AddRecipePage(),
                          ));
                        }, // Refer step 3
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(height: 50,),
                            Text(
                              S.of(context).menuCRUD,
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        color: Colors.cyan,
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
                            builder: (context) => Recovery(),
                          ));
                        }, // Refer step 3
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(height: 50,),
                            Text(
                              S.of(context).menuRecovery,
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        color: Colors.cyan,
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
                            builder: (context) => RChart(),
                          ));
                        }, // Refer step 3
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(height: 50,),
                            Text(
                              'Radar Chart',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        color: Colors.cyan,
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
                            builder: (context) => LChart(),
                          ));
                        }, // Refer step 3
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(height: 50,),
                            Text(
                              'Line Chart',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        color: Colors.cyan,
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
                            builder: (context) => PieDataChart(),
                          ));
                        }, // Refer step 3
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(height: 50,),
                            Text(
                              'Pie Chart',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        color: Colors.cyan,
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
                            builder: (context) => DiagramBar(title: 'Diagrama de barras'),
                          ));
                        }, // Refer step 3
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(height: 50,),
                            Text(
                              'Bar Chart',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        color: Colors.cyan,
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
                            builder: (context) => HomePage(),
                          ));
                        }, // Refer step 3
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(height: 50,),
                            Text(
                              'Home Chart',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        color: Colors.cyan,
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