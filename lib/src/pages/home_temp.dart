import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final optiones = ["uno","dos","tres","cuatro","cinco","seis"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Componentes Temp"),
      ),
      body: ListView(
        children: <Widget>[

        ],
      ),
    );
  }

  List<Widget> widgetList(){
    List<Widget> lista = new List<Widget>();
    for(String item in optiones){
      final option = ListTile(
        title: Text(item),
      );
      lista..add(option)
          ..add(Divider());
    }
    return lista;
  }

  List<Widget> listContar(){
    return optiones.map((item){
      return Column(
        children: <Widget>[
          ListTile(
            title: Text( item),
            subtitle: Text('descripcion'),
            leading: Icon(Icons.ac_unit),
          ),
          Divider()
        ],
      );
    }).toList();
  }
}
