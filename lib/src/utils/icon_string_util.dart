import 'package:flutter/material.dart';

final _icons  = <String,IconData>{

'add_alert' : Icons.add_alert,
'accesiblity' : Icons.accessibility,
'folder_open' : Icons.folder_open
};

Icon getIcon(String nombreIcon){


  return Icon(_icons[nombreIcon], color: Colors.blue);
}