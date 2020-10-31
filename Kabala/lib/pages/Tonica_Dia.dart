import 'package:flutter/material.dart';
class tonica_dia extends StatefulWidget {
  final int day,month,year;
  final String name, lastname;

  tonica_dia(this.day,this.month,this.year,this.name,this.lastname);
  @override
  _tonica_diaState createState() => _tonica_diaState();
}
class _tonica_diaState extends State<tonica_dia> {
  String name,lastname,dy,mt,yr;
  DateTime selectDate= DateTime.now();
  int day,month,year;
  void initState() {

    name=widget.name;
    lastname=widget.lastname;
    dy=widget.day.toString();
    mt=widget.month.toString();
    yr=widget.year.toString();
    day = selectDate.day;
    month=selectDate.month;
    year=selectDate.year;
  }
  int dayCabale(int day, int most, int year, int tf) {
    int sum,d,m,y,total;
    y=suma(year);
    m=suma(most);
    d=suma(day);
    total=suma(d+m+y);
    total=suma(total+tf);
    return total;
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
    int urgenciaInterior = sumaDeCifras(sumaDeCifras(sumaDeCifras(int.parse(dy))) + sumaDeCifras(sumaDeCifras(int.parse(mt))) + sumaDeCifras(sumaDeCifras(int.parse(yr))));
    int longitudNombreCompleto = longitudSinEspacios(name) + longitudSinEspacios(lastname);
    int sumaLongituNombreCompleto = sumaDeCifras(longitudNombreCompleto);
    int tonicaFundamental = sumaDeCifras(urgenciaInterior + sumaLongituNombreCompleto);
    int tonicaDia = dayCabale(day, month, year, tonicaFundamental);
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

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo[800],
        titleSpacing: 10,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Tonica del Dia',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            SizedBox(width: 50,)
          ],
        ),
        centerTitle: true,
      ),
      body: new Container(
        child: new Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Image(
                    image: AssetImage(img(tonicaDia)),
                    //image: NetworkImage('https://futooro.com/wp-content/uploads/2018/11/numero-8-numerologia.png'),
                    height: 250,
                  ),

                )
              ],

            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    RaisedButton(
                      onPressed: () => _selectDate(context), // Refer step 3
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.perm_contact_calendar_outlined,
                            color: Colors.white,
                          ),
                          SizedBox(width: 10,),
                          Text(
                            'Fecha a Investigar',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      color: Colors.indigo[800],
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(width:15,),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    height: 50,
                    decoration:
                    BoxDecoration(
                        color: Colors.indigo[100],
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(color: Colors.indigo[800], spreadRadius: 0.75),
                        ]
                    ),
                    child: Center(child: Text('${selectDate.day}/${selectDate.month}/${selectDate.year}')),
                  ),
                ),
                SizedBox(width:15,),
              ],
            ),
            SizedBox(height: 20,),
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
                                text: sig(tonicaDia),
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
  _selectDate(BuildContext context) async {

    final DateTime picked = await showDatePicker(
      context: context,
      initialDate: selectDate, // Refer step 1
      firstDate: DateTime(1900),
      lastDate: DateTime(2021),
    );
    print('$selectDate');
    if (picked != null && picked != selectDate)
      setState(() {
        selectDate = picked;
        day=selectDate.day;
        month=selectDate.month;
        year=selectDate.year;
        print('$day-$month-$year');
      });

  }
}