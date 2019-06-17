import 'package:flutter/material.dart';
import 'package:gallery_widgets_flutter/src/pages/alert_page.dart';
import 'package:gallery_widgets_flutter/src/providers/menu_provider.dart';
import 'package:gallery_widgets_flutter/src/utils/icons_string_util.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Compoentes"),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {

    // menuProvider.cargarData()

    return FutureBuilder(
      future: menuProvider.cargarData(),
      builder: ( context, AsyncSnapshot<List<dynamic>> snapshot ){
        return ListView(
          children: _listaItems(snapshot.data, context),
        );
      },
    );
  }

  List<Widget> _listaItems(List<dynamic> data, BuildContext context) {
    final List<Widget> optiones = [];
    data.forEach((opt){
      final widgetTemp = ListTile(
        title: Text(opt['texto']),
        leading: getIcon(opt['icon']),
        trailing: Icon(Icons.arrow_forward_ios , color: Colors.blue,),
        onTap: (){
          /*final route = MaterialPageRoute(
            builder: (context)=>AlertPage()
          );
          Navigator.push(context, route  );*/
          Navigator.pushNamed(context, opt['ruta']);
        },
      );

      optiones..add(widgetTemp)
              ..add(Divider());
    });
    return optiones;
  }
}
