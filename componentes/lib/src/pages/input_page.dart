import 'package:flutter/material.dart';


class InputPage extends StatefulWidget {

  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  
  String _nombre;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs de Texto'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        children: <Widget>[
          _crearInput(),
          Divider(),
          _crearPersona(),
        ],
      ),
    );
  }

  _crearInput() {

    return TextField(
      //autofocus: true,
        textCapitalization: TextCapitalization.sentences,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20)
          ),
          counter: Text('${_nombre.length}'),
          hintText: 'Nombre',
          labelText: 'Nombre',
          helperText: 'Solo nombre',
          suffixIcon: Icon(Icons.accessibility),
          icon: Icon(Icons.account_circle)
        ),
        onChanged: (valor){
          setState(() {
            _nombre = valor;
          });

        },
      );
  }

  _crearPersona() {
    return ListTile(
      title: Text('Nombre es: $_nombre'),
    );
  }
}