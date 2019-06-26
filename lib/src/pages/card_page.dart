import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 30.0,),
          _cardTipo2(),
        ],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album,color: Colors.blue),
            title: Text('soy el titulo de esta tarjeta'),
            subtitle: Text('esta es una descripcion larga que no tengo ideo de lo uq dice'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text('cancelar'),
                onPressed: (){},
              ),
              FlatButton(
                child: Text('ok'),
                onPressed: (){

                },
              )
            ],
          )
        ],
      ),
    );
  }

 Widget _cardTipo2() {
    final card = Container(

      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage('https://i.ytimg.com/vi/BfCwN4iy6T8/maxresdefault.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeOutDuration: Duration( milliseconds:  200),
            height: 300.0,
            fit: BoxFit.cover,
          ),
          /*Image(
            image: NetworkImage('https://i.ytimg.com/vi/BfCwN4iy6T8/maxresdefault.jpg'),
          ),*/
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('no tengo idea'),
          ),
        ],
      ),
    );

    return Container(
      child: ClipRRect(
        child: card,
        borderRadius: BorderRadius.circular(30.0),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(2.0,10.0),
          )
        ]
      ),
    );
 }
}
