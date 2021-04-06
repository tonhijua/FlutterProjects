import 'package:flutter/material.dart';


import 'package:flutter_application_1/src/pages/alert_page.dart';
import 'package:flutter_application_1/src/pages/avatar_page.dart';
import 'package:flutter_application_1/src/pages/card_page.dart';
import 'package:flutter_application_1/src/pages/home_page.dart';
import 'package:flutter_application_1/src/pages/login_page.dart';


Map<String, WidgetBuilder> getApplicationRoutes(){

return <String, WidgetBuilder>{
        '/' : (BuildContext context) => HomePage(),
        '/home' :(BuildContext context) => HomePage(),
        '/alert' :(BuildContext context) => AlertPage(),
        '/avatar' :(BuildContext context) => AvatarPage(),
        '/card' :(BuildContext context) => CardPage(),
        '/login' :(BuildContext context) => LoginPage(),
      };
}

 