
import 'package:flutter/material.dart';
import 'package:student_info_app/screens/data_screen.dart';
import 'package:student_info_app/screens/home_screen.dart';
import 'package:student_info_app/screens/splesh_screen.dart';

Map<String,WidgetBuilder> appRoutes={
   '/':(context)=>const SpleshScreen(),
   'home':(context)=>const HomeScreen(),
   'data':(context)=>const DataScreen(),


};