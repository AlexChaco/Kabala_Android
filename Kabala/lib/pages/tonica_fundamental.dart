import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class tonica_fundamental extends StatefulWidget{
  final int day,month,year;
  final String name, lastname;
  tonica_fundamental(this.day,this.month,this.year,this.name,this.lastname);
  @override
  _tonica_fundamentalState createState() => _tonica_fundamentalState();
}

class _tonica_fundamentalState extends State<tonica_fundamental> {
  String name;
  String lastName;
  String dia;
  String mes;
  String year;

  @override
  void initState() {
    // TODO: implement initState
    name=widget.name;
    lastName=widget.lastname;
    dia=widget.day.toString();
    mes=widget.month.toString();
    year=widget.year.toString();
  }
  @override
  Widget build(BuildContext context) {



    int longitudSinEspacios(String palabra){
      int contador = 0;
      for(int i = 0; i < palabra.length; i++){
        if(palabra.substring(i, i+1) != " "){
          contador++;
        }
      }
      return contador;
    }

    int sumaDeCifras(int numero){
      int suma = 0;
      for(int i = 0; i < numero.toString().length; i++){
        suma += int.parse(numero.toString().substring(i, i+1));
      }
      return suma;
    }
    String img(int valor){
      if(valor==1)
        return "assets/uno.png";
      else if(valor==2)
        return "assets/dos.png";
      else if(valor==3)
        return "assets/tres.png";
      else if(valor==4)
        return "assets/cuatro.png";
      else if(valor==5)
        return "assets/cinco.png";
      else if(valor==6)
        return "assets/seis.png";
      else if(valor==7)
        return "assets/siete.png";
      else if(valor==8)
        return "assets/ocho.png";
      else if(valor==9)
        return "assets/nueve.png";
      else
        return"";
    }
    String sig(int valor) {
      if (valor == 1)
        return 'El 1 nos hace un hombre de espada, voluntad y poder';
      else if (valor == 2)
        return 'Sacerdotiza en la ciencia oculta, siempre favorable';
      else if (valor == 3)
        return 'Conocida como la Madre divina :Producto material y espiritual';
      else if (valor == 4)
        return 'El 4 es el simbolo de Exito, progreso y mando pero mesericordioso';
      else if (valor == 5)
        return 'El Arcano 5 del Tarot, es el rigor, el estudio, la Ciencia, el análisis, la investigación, el intelecto, esa Urgencia Interior lo hace razonativo.';
      else if (valor == 6)
        return 'El numero 6 para la indecision y el enamorado, Pero de buena suerte';
      else if (valor == 7)
        return 'Justicia, Conocida como el arcano de Job, pruebas y sufrimiento';
      else if (valor == 8)
        return 'El 8 nos hace pacientes, pasivos, enérgicos, justos, rectos, ha habido sufrimientos, luchas, estudio, ha tenido que pasar por muchas pruebas.';
      else if (valor == 9)
        return 'Esfera, El Ermitaño en medio de todos buscando la luz, llegará a producir grandes obras geniales. Desarrollar una tremenda energía lo ha hecho Ermitaño en el camino de la existencia.';
      else
        return 'Indefinido';
    }

    int urgenciaInterior = sumaDeCifras(sumaDeCifras(sumaDeCifras(int.parse(dia))) + sumaDeCifras(sumaDeCifras(int.parse(mes))) + sumaDeCifras(sumaDeCifras(int.parse(year))));
    int longitudNombreCompleto = longitudSinEspacios(name) + longitudSinEspacios(lastName);
    int sumaLongituNombreCompleto = sumaDeCifras(longitudNombreCompleto);
    int tonicaFundamental = sumaDeCifras(urgenciaInterior + sumaLongituNombreCompleto);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo[800],
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'URGENCIA INTERIOR',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            SizedBox(width: 50,)
          ],
        ),
      ),

      body: Container(
        padding: EdgeInsets.only(
            top: 100,
            bottom: 20,
            right: 20,
            left: 20
        ),
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Image(
                    image: AssetImage(img(tonicaFundamental)),
                    //image: NetworkImage('https://futooro.com/wp-content/uploads/2018/11/numero-8-numerologia.png'),
                    height: 250,
                  ),

                )
              ],

            ),
            SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget> [
                SizedBox(width: 15,),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    height: 150,
                    decoration:
                    BoxDecoration(
                        color: Colors.indigo[100],
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(color: Colors.indigo[800], spreadRadius: 0.75),
                        ]
                    ),
                    child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                text: sig(tonicaFundamental),
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        )
                    ),
                  ),
                ),
                SizedBox(width: 15,),
              ],
            ),
          ],
        ),

      ),
    );
  }
}

//CODIGO ORIGINAL

/*
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget{
  const SecondPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    SecondPageArguments arguments = ModalRoute.of(context).settings.arguments;

    int longitudSinEspacios(String palabra){
      int contador = 0;
      for(int i = 0; i < palabra.length; i++){
        if(palabra.substring(i, i+1) != " "){
          contador++;
        }
      }
      return contador;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Segunda pantalla"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(arguments.name),
            Text(arguments.lastName),
            Text(longitudSinEspacios(arguments.name).toString()),
            Text(longitudSinEspacios(arguments.lastName).toString()),
          ],
        ),
      ),
    );
  }
}

class SecondPageArguments{
  String name;
  String lastName;
  SecondPageArguments({this.name, this.lastName});
}
*/