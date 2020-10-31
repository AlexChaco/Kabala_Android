import 'package:flutter/material.dart';
import 'package:app/pages/home.dart';

class urgencia extends StatefulWidget {
  final int day,month,year;
  urgencia(this.day,this.month,this.year);
  @override
  _urgenciaState createState() => _urgenciaState();
}

class _urgenciaState extends State<urgencia> {
  int valor,anio,mes,dia,sumAnio,sumDia,sumMes,total,fin;
  String significado,finS,image;
  void  initState () {
    anio = widget.year;
    mes = widget.month;
    dia = widget.day;
    sumAnio = suma(anio);
    sumDia = suma(dia);
    sumMes = suma(mes);
    total = sumDia+sumMes+sumAnio;
    fin = suma(total);

    significado = sig(fin);
    image = img(fin);
    finS = fin.toString();
  }
  int suma(int numero) {
      int suma =0;
      int num;
      for(int i =0;i < numero.toString().length ; i++){
        num = int.parse(numero.toString().substring(i, i+1));
        suma +=num;
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
  @override
  Widget build(BuildContext context) {
    int valor;
    return Scaffold(
      resizeToAvoidBottomPadding: false,
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
                    image: AssetImage(image),
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
                                text: significado,
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

    )
    ,
    );
  }


}
