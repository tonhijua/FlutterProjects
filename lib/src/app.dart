import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/pages/home_page_temp.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Center(
          child: HomePageTemp(),
        ),
        
        );
        
  }
}
