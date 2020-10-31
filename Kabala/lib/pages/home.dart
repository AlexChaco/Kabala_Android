import 'package:app/pages/opciones.dart';
import 'package:flutter/material.dart';

 class Home extends StatefulWidget {
   @override
   _HomeState createState() => _HomeState();
 }
 
 class _HomeState extends State<Home> {

   final nameController = TextEditingController();
   final lastController = TextEditingController();

   @override
   void dispose() {
     nameController.dispose();
     lastController.dispose();
     super.dispose();
   }

   DateTime selectDate= DateTime.now();
   int day,month,year;
   String name,lastname;
   void initState() {
    day = selectDate.day;
    month=selectDate.month;
    year=selectDate.year;
   }
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
             Icon(
             Icons.home,
             color: Colors.white,
           ),
             SizedBox(width: 10,),
             Text(
               'KABALA',
               style: TextStyle(
                 color: Colors.white,
               ),
             ),
           ],
         ),
         centerTitle: true,
       ),
       body: SingleChildScrollView(
         child: Container(
           padding: EdgeInsets.only(
               top: 5,
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
                       image: AssetImage('assets/cabala.jpg'),
                       height: 350,
                     ),
                   )
                 ],
               ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: <Widget>[
                   Expanded(
                     child: TextField(
                       controller: nameController,
                       cursorColor: Colors.white,
                       style: TextStyle(
                         fontSize: 16,
                         color: Colors.black,
                       ),
                       decoration: InputDecoration(
                         hintText: 'Ingresa tu Nombre',
                         focusedBorder: OutlineInputBorder(
                           borderSide: BorderSide(color: Colors.indigo[800]),
                           borderRadius: BorderRadius.circular(15),
                         ),
                         enabledBorder: OutlineInputBorder(
                           borderSide: BorderSide(color: Colors.indigo[800]),
                           borderRadius: BorderRadius.circular(15),
                         ),
                         fillColor: Colors.indigo[100],
                         filled: true,
                         border: OutlineInputBorder(),
                       ),
                     ),
                   ),

                 ],
               ),
               SizedBox(height: 10,),
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: <Widget>[
                   Expanded(
                     child: TextField(
                       controller: lastController,
                       cursorColor: Colors.white,
                       style: TextStyle(
                         fontSize: 16,
                         color: Colors.black,
                       ),
                       decoration: InputDecoration(
                         hintText: 'Ingresa su Apellido',
                         focusedBorder: OutlineInputBorder(
                           borderSide: BorderSide(color: Colors.indigo[800]),
                           borderRadius: BorderRadius.circular(15),
                         ),
                         enabledBorder: OutlineInputBorder(
                           borderSide: BorderSide(color: Colors.indigo[800]),
                           borderRadius: BorderRadius.circular(15),
                         ),
                         fillColor: Colors.indigo[100],
                         filled: true,
                         border: OutlineInputBorder(),
                       ),
                     ),
                   ),

                 ],
               ),
               SizedBox(height: 10,),
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
                               'Fecha de Nacimiento',
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
               SizedBox(height: 10,),
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: <Widget>[
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
                 ],
               ),
               SizedBox(height: 10,),
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                 Column(
                   mainAxisSize: MainAxisSize.min,
                   children: <Widget>[
                     RaisedButton(
                       onPressed: (){
                         setState(() {
                           name=nameController.text;
                           lastname=lastController.text;
                         });
                         Navigator.of(context).push(MaterialPageRoute(
                           builder: (context) => opciones(name,lastname,day,month,year),
                         ));
                       },
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: <Widget>[
                           Icon(
                             Icons.home,
                             color: Colors.white,
                           ),
                           SizedBox(width: 10,),
                           Text(
                             'Consultar',
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
             ],
           ),
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
       });
     print('$day-$month-$year');
     print('$name $lastname');
   }
 }