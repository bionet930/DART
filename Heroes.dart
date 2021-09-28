
main() {

  
  final superman = new Heroe ();
  superman.nombre = 'Clark Kent';
  superman.poder = 'super fuerza y vuela';
  superman.valentia = 99;


  final luthor = new Villano ();
  luthor.nombre = 'Lex Luthor';
  luthor.poder = 'destruccion';
  luthor.maldad = 95;

  print(superman.nombre);
  print(superman.poder);
  print(superman.valentia);
  
}

abstract class personaje{
  String poder = 'Sin Poder';
  String nombre = 'Sin Nombre';
}

class Heroe extends personaje{

  //String poder;
  //String nombre;
  int valentia = 0;
}

class Villano extends personaje{

//String poder;
//String nombre;
int maldad = 0;
}


