import 'package:flutter/material.dart';

import 'package:flutter_application_1/src/routes/routes.dart';

//MY IMPORTS


void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(context) {
    return MaterialApp(
      title: 'My Aplication',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: getApplicationRoutes()
    );
  }
}


