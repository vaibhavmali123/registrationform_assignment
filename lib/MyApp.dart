import 'package:flutter/material.dart';
import 'package:registrationform_assignment/views/MyHomePage.dart';

import 'views/PersonalInfoPage.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      initialRoute:'/',
      routes:{
        '/':(context)=>MyHomePage(),
        '/PersonalInfoPage':(context)=>PersonalInfoPage(),
      },
    );
  }
}