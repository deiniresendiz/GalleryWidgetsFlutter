import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class _MenuProvider{
  List<dynamic> optiones = [];

  _MenuProvider(){
    //cargarData();
  }

  Future<List<dynamic>> cargarData() async{
    final res = await rootBundle.loadString('data/menu-opts.json');
    Map dataMap = json.decode(res);
    return optiones  = dataMap['rutas'];

  }
}

final menuProvider = new _MenuProvider();