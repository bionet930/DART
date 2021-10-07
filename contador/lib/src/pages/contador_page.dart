import 'package:flutter/material.dart';
import 'package:contador/src/pages/home_page.dart';
import 'package:contador/src/pages/home_page2.dart';


class ContadorPage extends StatefulWidget{

  @override
  createState() => _ContadorPageState();
    
  }


class _ContadorPageState extends State<ContadorPage>{

  final _estiloTexto = new TextStyle( fontSize: 30 );
  int _conteo = 0;
 

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold (

      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext){
      return IconButton(
      icon: const Icon(Icons.menu),
      onPressed: () => print('Soy el Boton del Menu'),
      );
          },
      ),
      centerTitle: true,
      title: Text('Stateful'),
      actions: <Widget> [
      IconButton(
        icon: new Icon(Icons.merge_type),
        //onPressed: () => print('Hola soy un Boton de Accion'),
        onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomePage2()),
          );
        }
      ),
      ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Numero de Clicks: ', style: _estiloTexto),
            Text( '$_conteo', style: _estiloTexto),
          ],


        ),
      
      
      ),
      floatingActionButton: _crearBotones()
  
    );
  }

  Widget _crearBotones() {

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox( width: 30.0, ),
        FloatingActionButton( child: Icon(Icons.exposure_zero), onPressed: _acero ),
        Expanded(child: SizedBox()),
        FloatingActionButton( child: Icon(Icons.remove), onPressed: _restar ),
        SizedBox( width: 5.0, ),
        FloatingActionButton( child: Icon(Icons.add), onPressed: _agregar ),
      ],

    );
    
  }
    void _agregar(){
      setState(() {
        _conteo++;
      });
    }

    void _restar(){
      setState(() {
        _conteo--;
      });
    }

    void _acero(){
      setState(() {
        _conteo = 0;
      });
    }
    
  }
  