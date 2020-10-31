import 'package:flutter/material.dart';
import 'package:app/pages/home.dart';
import 'package:app/pages/urgencia.dart';
class calculo extends StatefulWidget {
  @override
  _calculoState createState() => _calculoState();
}

class _calculoState extends State<calculo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text('Calculo'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.green,
        ),
        child: FlatButton.icon(
          onPressed: (){
            Navigator.pushNamed(context, '/urgencia');
          },
          icon: Icon(Icons.share),
          label: Text('rwrwer'),
        ),
      ),
    );
  }
}

