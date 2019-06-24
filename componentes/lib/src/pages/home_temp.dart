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
        //_crearItems(),
        _crearItemsCorta(),

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

  List<Widget> _crearItemsCorta(){
    
    return opciones.map(( item ){

      return Column(
        children: <Widget>[
          ListTile(
            title: Text(item),
            subtitle: Text('algo'),
            leading: Icon( Icons.access_alarm ),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: (){},
          ),
          Divider(color: _listTileColor,),
        ],
      );

    }).toList();

  }



}