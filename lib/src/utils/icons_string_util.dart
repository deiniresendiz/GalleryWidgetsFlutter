import 'package:flutter/material.dart';

final _cons = <String, IconData>{
  'add_alert' : Icons.add_alert,
  'accessibility' : Icons.accessibility,
  'folder_open' : Icons.folder_open,
};


Icon getIcon(String nombreIcon){
  return Icon(_cons[nombreIcon], color: Colors.blue,);
}