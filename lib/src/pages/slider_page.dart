import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valueSlider = 100;
  bool _bloquerarCheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider Page'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: <Widget>[
            _crearSlider(),
            _crearChebox(),
            _crearSwith(),
            Expanded(
              child: _crearImage(),
            ),
          ],
        ),

      ),
    );
  }

  Widget _crearSlider() {
    return Slider(
      activeColor: Colors.indigoAccent,
      value: _valueSlider,
      min: 10.0,
      max: 400.0,
      onChanged: _bloquerarCheck?null:(value){
        print(value.toString());
        setState(() {
          _valueSlider = value;
        });
      },
    );
  }

  Widget _crearImage() {
    return Image(
      image: NetworkImage('http://www.pngmart.com/files/3/One-Piece-Zoro-PNG-Transparent-Image.png'),
      width: _valueSlider,
      fit: BoxFit.contain,
    );
  }

  Widget _crearChebox() {
    /*return Checkbox(
      value: _bloquerarCheck,
      onChanged: (value){
        setState(() {
          _bloquerarCheck = value;
        });
      },
    );*/

    return CheckboxListTile(
      title: Text('bloquera'),
      value: _bloquerarCheck,
      onChanged: (value){
        setState(() {
          _bloquerarCheck = value;
        });
      },
    );
  }

  Widget _crearSwith() {
    return SwitchListTile(
      title: Text('bloquera'),
      value: _bloquerarCheck,
      onChanged: (value){
        setState(() {
          _bloquerarCheck = value;
        });
      },
    );
  }
}
