import 'package:flutter/material.dart';
import 'package:app/pages/home.dart';

 class kabalaOfYear extends StatefulWidget {
   final int year;
   kabalaOfYear(this.year);
   @override
   _kabalaOfYearState createState() => _kabalaOfYearState();
 }

 class _kabalaOfYearState extends State<kabalaOfYear> {
   int year,year1,year2,year3,year4,year5;
   int sum,sum1,sum2,sum3,sum4,sum5;
   int num,num1,num2,num3,num4,num5;
   int y1,y2,y3,y4;
   int a,b;
   @override
   void initState() {
     //------------------------------------------------ Año X
     year = widget.year;
     y1 = int.parse(year.toString().substring(0, 1));
     y2 = int.parse(year.toString().substring(1, 2));
     y3 = int.parse(year.toString().substring(2, 3));
     y4 = int.parse(year.toString().substring(3, 4));
     sum = y1 + y2 + y3 + y4;
     num = sum;
     while (sum >= 10) {
       a = int.parse(sum.toString().substring(0, 1));
       b = int.parse(sum.toString().substring(1, 2));
       sum = a + b;
     };
     //------------------------------------------------ Año 1
     year1=year+num;
     y1 = int.parse(year1.toString().substring(0, 1));
     y2 = int.parse(year1.toString().substring(1, 2));
     y3 = int.parse(year1.toString().substring(2, 3));
     y4 = int.parse(year1.toString().substring(3, 4));
     sum1 = y1 + y2 + y3 + y4;
     num1=sum1;
     while (sum1>= 10) {
       a = int.parse(sum1.toString().substring(0, 1));
       b = int.parse(sum1.toString().substring(1, 2));
       sum1 = a + b;
     };
     //------------------------------------------------ Año 2
     year2=year1+num1;
     y1 = int.parse(year2.toString().substring(0, 1));
     y2 = int.parse(year2.toString().substring(1, 2));
     y3 = int.parse(year2.toString().substring(2, 3));
     y4 = int.parse(year2.toString().substring(3, 4));
     sum2 = y1 + y2 + y3 + y4;
     num2=sum2;
     while (sum2>= 10) {
       a = int.parse(sum2.toString().substring(0, 1));
       b = int.parse(sum2.toString().substring(1, 2));
       sum2 = a + b;
     };
     //------------------------------------------------ Año 1
     year3=year2+num2;
     y1 = int.parse(year3.toString().substring(0, 1));
     y2 = int.parse(year3.toString().substring(1, 2));
     y3 = int.parse(year3.toString().substring(2, 3));
     y4 = int.parse(year3.toString().substring(3, 4));
     sum3 = y1 + y2 + y3 + y4;
     num3=sum3;
     while (sum3>= 10) {
       a = int.parse(sum3.toString().substring(0, 1));
       b = int.parse(sum3.toString().substring(1, 2));
       sum3 = a + b;
     };
     //------------------------------------------------ Año 1
     year4=year3+num3;
     y1 = int.parse(year4.toString().substring(0, 1));
     y2 = int.parse(year4.toString().substring(1, 2));
     y3 = int.parse(year4.toString().substring(2, 3));
     y4 = int.parse(year4.toString().substring(3, 4));
     sum4 = y1 + y2 + y3 + y4;
     num4=sum4;
     while (sum4>= 10) {
       a = int.parse(sum4.toString().substring(0, 1));
       b = int.parse(sum4.toString().substring(1, 2));
       sum4 = a + b;
     };
     //------------------------------------------------ Año 1
     year5=year4+num4;
     y1 = int.parse(year5.toString().substring(0, 1));
     y2 = int.parse(year5.toString().substring(1, 2));
     y3 = int.parse(year5.toString().substring(2, 3));
     y4 = int.parse(year5.toString().substring(3, 4));
     sum5 = y1 + y2 + y3 + y4;
     num5 = sum5;
     while (sum5>= 10) {
       a = int.parse(sum5.toString().substring(0, 1));
       b = int.parse(sum5.toString().substring(1, 2));
       sum5 = a + b;
     };
   }
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         backgroundColor: Colors.indigo[800],
         centerTitle: true,
         title: Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
             Text(
               'Cábala del Año',
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
             top: 20,
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
                     image: AssetImage('assets/2020.jpg'),
                     height: 271,
                   ),
                 )
               ],
             ),
             SizedBox(height: 20,),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: <Widget> [
                 SizedBox(width: 15,),
                 Expanded(
                   child: Container(
                     padding: EdgeInsets.all(10),
                     height: 100,
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
                           children: <Widget>[
                             Text('Año: ${year1}',
                               style: TextStyle(
                               fontWeight: FontWeight.bold,
                               fontSize: 18,
                               color: Colors.black,
                             ),
                             ),
                             Text('Número: ${sum1}',
                               style: TextStyle(
                                 fontWeight: FontWeight.bold,
                                 fontSize: 18,
                                 color: Colors.black,
                               ),),
                           ],
                         )
                     ),
                   ),
                 ),
                 SizedBox(width: 20,),
                 Expanded(
                   child: Container(
                     padding: EdgeInsets.all(10),
                     height: 100,
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
                           children: <Widget>[
                             Text('Año: ${year2}',
                               style: TextStyle(
                                 fontWeight: FontWeight.bold,
                                 fontSize: 18,
                                 color: Colors.black,
                               ),),
                             Text('Número ${sum2}',
                               style: TextStyle(
                                 fontWeight: FontWeight.bold,
                                 fontSize: 18,
                                 color: Colors.black,
                               ),),
                           ],
                         )
                     ),
                   ),
                 ),
                 SizedBox(width: 15,),
               ],
             ),
             SizedBox(height: 20,),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: <Widget> [
                 SizedBox(width: 15,),
                 Expanded(
                   child: Container(
                     padding: EdgeInsets.all(10),
                     height: 100,
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
                           children: <Widget>[
                             Text('Año: ${year3}',
                                 style: TextStyle(
                                   fontWeight: FontWeight.bold,
                                   fontSize: 18,
                                   color: Colors.black,
                                 ),
                             ),
                             Text('Número: ${sum3}',
                               style: TextStyle(
                                 fontWeight: FontWeight.bold,
                                 fontSize: 18,
                                 color: Colors.black,
                               ),),
                           ],
                         )
                     ),
                   ),
                 ),
                 SizedBox(width: 20,),
                 Expanded(
                   child: Container(
                     padding: EdgeInsets.all(10),
                     height: 100,
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
                           children: <Widget>[
                             Text('Año: ${year4}',
                               style: TextStyle(
                                 fontWeight: FontWeight.bold,
                                 fontSize: 18,
                                 color: Colors.black,
                               ),
                             ),
                             Text('Número: ${sum4}',
                               style: TextStyle(
                                 fontWeight: FontWeight.bold,
                                 fontSize: 18,
                                 color: Colors.black,
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
             SizedBox(height: 20,),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: <Widget> [
                 SizedBox(width: 100,),
                 Expanded(
                   child: Container(
                     padding: EdgeInsets.all(10),
                     height: 100,
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
                           children: <Widget>[
                             Text('Año: ${year5}',
                               style: TextStyle(
                                 fontWeight: FontWeight.bold,
                                 fontSize: 18,
                                 color: Colors.black,
                               ),
                             ),
                             Text('Número: ${sum5}',
                               style: TextStyle(
                                 fontWeight: FontWeight.bold,
                                 fontSize: 18,
                                 color: Colors.black,
                               ),
                             ),
                           ],
                         )
                     ),
                   ),
                 ),
                 SizedBox(width: 100,),
               ],
             ),
           ],
         ),
       ),
     );
   }
 }