import 'package:flutter/material.dart';


class HomePageTemp extends StatelessWidget {

  final _listTileColor = Colors.blue;
  final opciones = ['UNO', 'DOS', 'TRES', 'CUATRO', 'CINCO'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
      ),
      body: ListView(
        children:
        _crearItems(),

      ),
    );
  }

  List<Widget> _crearItems(){

    List<Widget> lista = new List<Widget>();

    for (String item in opciones) {
      final tempWidget = ListTile(title: Text(item), );
      lista..add( tempWidget )
           ..add(Divider(color: _listTileColor,));
    }

    return lista;
  }

}