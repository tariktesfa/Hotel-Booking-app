 import 'package:flutter/material.dart';
 import 'package:hotelbooking/home.dart';

 void main()=> runApp(MyApp());
 
 class MyApp extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       debugShowCheckedModeBanner: false,
       //title: 'Hotel Booking App',
       home: HomePage(),
     );
   }
 }
 