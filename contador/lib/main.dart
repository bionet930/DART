import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

//Importaciones de los archivos
import 'src/app.dart';


void main() {

runApp(MyApp(


));


}




 class HomePage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}




