import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gallery_widgets_flutter/src/pages/alert_page.dart';
import 'package:gallery_widgets_flutter/src/routes/routes.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

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
      localizationsDelegates: [
        // ... delegado[s] de localización específicos de la app aquí
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en'), // Inglés
        const Locale('es'), // Español
        const Locale.fromSubtags(languageCode: 'zh'), // Chino *Mira Localizaciones avanzadas más abajo*
        // ... otras regiones que la app soporte
      ],
    );
  }
}
