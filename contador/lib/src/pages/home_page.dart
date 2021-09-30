import 'package:flutter/material.dart';


class HomePage extends StatelessWidget{

@override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold (

      appBar: AppBar(
        title: Text('Mi Primera APP Flutter'),
        centerTitle: true,
        toolbarHeight: 65.35,
      ),
      body: Center(
        child: Text('Número de TABS:'),
      ),


    );
  }


}