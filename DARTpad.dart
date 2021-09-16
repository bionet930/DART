// Funciona Main en DART primera prueba!
main() {
  var nombre;
  conocerTipo(nombre);
  nombre = 'HUGO';
  conocerTipo(nombre);
  nombre = 3.22;
  conocerTipo(nombre);
  print(nombre);
}

conocerTipo(dynamic variable) {
  if (variable is String)
    print('Nombre es del tipo String');
  else
    print('nombre es de otro tipo');
}
