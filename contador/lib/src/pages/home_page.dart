import 'package:flutter/material.dart';
import 'package:contador/src/pages/home_page2.dart';


class HomePage extends StatelessWidget{

  final estiloTexto = new TextStyle( fontSize: 30 );
  final conteo = 10;

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
      title: Text('Primera App en Flutter'),
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
            Text('Numero de Clicks: ', style: estiloTexto),
            Text( '$conteo', style: estiloTexto),
          ],


        ),
      
      
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          print('Hola Mundo');
          
        },
      ),
      

    );
  }



}