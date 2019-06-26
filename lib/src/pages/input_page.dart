import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _nombre = "";
  String _email = "";
  String _fecha ="";
  String _opcionSelecionada = 'volar';
  List<String> _poderes = ['volar','rayos x','fuego'];
  TextEditingController _inputFieldController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 20.0),
        children: <Widget>[
          _createInput(),
          Divider(),
          _createEmail(),
          Divider(),
          _createPassword(),
          Divider(),
          createDate(context),
          Divider(),
          _createDropdown(),
          Divider(),
          _createPerson(),
        ],
      ),
    );
  }

  Widget _createInput() {
    return TextField(
      //autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        counter:  Text("Letras ${ _nombre.length}"),
        hintText: 'Nombre de la persona',
        labelText: 'Nombre',
        helperText: 'Solo es el nombre',
        suffixIcon: Icon(Icons.accessibility),
        icon: Icon(Icons.account_circle)
      ),
      onChanged: (valor) {

        setState(() {
          _nombre = valor;
        });
      },
    );
  }

  Widget _createPerson() {
    return ListTile(
      title: Text('El nombre es: ${ _nombre}'),
      subtitle: Text('El email es: ${ _email}'),
    );
  }

  Widget _createEmail() {
    return TextField(
      //autofocus: true,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0)
          ),
          counter:  Text("Letras ${ _email.length}"),
          hintText: 'Correo electronico',
          labelText: 'Email',
          helperText: 'Solo es el email',
          suffixIcon: Icon(Icons.alternate_email),
          icon: Icon(Icons.email)
      ),
      onChanged: (valor)=> setState(() {
          _email = valor;
        }),
    );
  }

  Widget _createPassword() {
    return TextField(
      //autofocus: true,
      obscureText: true,
      decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0)
          ),
          counter:  Text("Letras ${ _nombre.length}"),
          hintText: 'Password',
          labelText: 'Password',
          helperText: 'Solo es el Password',
          suffixIcon: Icon(Icons.lock),
          icon: Icon(Icons.lock)
      ),
      onChanged: (valor)=> setState(() {
        _email = valor;
      }),
    );
  }

  Widget createDate(BuildContext context) {
    return TextField(
        //autofocus: true,
      controller: _inputFieldController,
        enableInteractiveSelection: false,
        decoration: InputDecoration(
        border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20.0)
    ),
    hintText: 'Fecha de nacimiento',
    labelText: 'Fecha de nacimineto',
    suffixIcon: Icon(Icons.perm_contact_calendar),
    icon: Icon(Icons.calendar_today)
    ),
    onTap: (){
          FocusScope.of(context).requestFocus(new FocusNode());
          _selectDate(context);
    },
    );
  }

  _selectDate(BuildContext context) async {
    DateTime picket = await showDatePicker(
      context:  context,
      initialDate: new DateTime.now(),
      firstDate: new DateTime(2018),
      lastDate: new DateTime(2022),
      locale: Locale('es','ES')
    );

    if(picket != null){
      setState(() {
        _fecha = picket.toString();
        _inputFieldController.text = _fecha;
      });
    }
  }

  List<DropdownMenuItem<String>> getOpcionesDropdown() {
    List<DropdownMenuItem<String>> lista = new List();
    _poderes.forEach((poder){
      lista.add(DropdownMenuItem(
        child: Text(poder),
        value: poder,
      ));
    });
    return lista;
  }

  Widget _createDropdown() {
    return Row(
      children: <Widget>[
        Icon(Icons.select_all),
        SizedBox(width: 30.0),
        Expanded(
          child: DropdownButton(
            value: _opcionSelecionada,
            items: getOpcionesDropdown(),
            onChanged: (opt){
              print(opt);
              setState(() {
                _opcionSelecionada = opt;
              });
            },
          ),
        ),
      ],
    );
  }
}
