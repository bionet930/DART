import 'package:flutter/foundation.dart';
import 'package:contador/src/pages/home_page.dart';
import 'package:flutter/material.dart';


class HomePage2 extends StatelessWidget {
  //home_page2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final title = 'Home Page 2';
    
    return MaterialApp(
      
      title: title,
      home: Scaffold(
        // No se proporciona ningún appbar al Scaffold, sólo un body con un
        // CustomScrollView
        body: CustomScrollView(
          slivers: <Widget>[
            // Agrega un app bar al CustomScrollView
            SliverAppBar(
              // Provee un título estándard
              title: Text(title),
              // Permite al usuario revelar el app bar si comienza a desplazarse
              // hacia arriba en la lista de elementos
              floating: true,
              // Mostrar un widget placeholder para visualizar el tamaño de reducción
              flexibleSpace: Placeholder(),
              // Aumentar la altura inicial de la SliverAppBar más de lo normal
              expandedHeight: 80,
            ),
            // A continuación, crea un SliverList
            SliverList(
              // Para ello, se utiliza un delegado para crear elementos a medida que
              // se desplazan por la pantalla. 
              delegate: SliverChildBuilderDelegate(
                
                // La función builder devuelve un ListTile con un título que
                // muestra el índice del elemento actual
                (context, index) => ListTile(title: Text('Item #$index')),
                // Construye 1000 ListTiles
                childCount: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

