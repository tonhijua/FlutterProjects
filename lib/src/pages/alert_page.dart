import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  const AlertPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('alertas'),),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.backup_outlined),
        onPressed: (){
          Navigator.pop(context);
        },
      ),
    );
  }
}