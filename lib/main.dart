import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gallery_widgets_flutter/src/pages/alert_page.dart';
import 'package:gallery_widgets_flutter/src/routes/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Gallery",
      debugShowCheckedModeBanner: false,
      //home: HomePage(),
      initialRoute: '/',
      routes: getAplicationRoutes(),
      onGenerateRoute: (RouteSettings setting){

      return MaterialPageRoute(
        builder: (BuildContext context) => AlertPage()
      );
      },
    );
  }
}
