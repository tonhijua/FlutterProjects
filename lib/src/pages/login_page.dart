import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  //const LoginPage({Key key}) : super(key: key);
  final url = 'https://hdwallpaperim.com/wp-content/uploads/2017/08/22/377607-space-planet-landscape-universe-night_sky.jpg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('login'),
        leading: Container(),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.home),
        onPressed: () {
          Navigator.pushNamed(context, '/home');
        },
      ),
      body:   FadeInImage(
          placeholder: AssetImage('assets/1.gif'),
           image: NetworkImage(url),
           fadeInDuration: Duration(milliseconds: 200),
           //height: 300.0,
           fit: BoxFit.cover,
           ),
    );
  }
}
