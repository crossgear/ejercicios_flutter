import 'package:flutter/material.dart';


class ContadorPage extends StatefulWidget{

  @override
  State<StatefulWidget> createState() => _ContadorPageState();
  }


class _ContadorPageState extends State<ContadorPage>{

  final _estiloTexto = TextStyle(fontSize: 25);
  final _colorBoton = Colors.green[900];
  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Stateful",
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Numero de Taps:", style: _estiloTexto,),
            Text('$_conteo', style: _estiloTexto,),
          ],
        ),
      ),
      floatingActionButton: _crearBotones()
    );
  }

  Widget _crearBotones(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(width: 30,),
        FloatingActionButton(child: Icon(Icons.exposure_zero), onPressed: _reset, backgroundColor: _colorBoton,),
        Expanded(child: SizedBox(),),
        FloatingActionButton(child: Icon(Icons.remove), onPressed: _sustraer, backgroundColor: _colorBoton,),
        SizedBox(width: 100),
        FloatingActionButton(child: Icon(Icons.add), onPressed: _agregar, backgroundColor: _colorBoton,),
      ],
    );
    
  }

  void _agregar() => setState(() { _conteo++; });
  void _sustraer() => setState(() { if(_conteo > 0 ){_conteo--;} });
  void _reset() => setState(() { _conteo = 0; });


}