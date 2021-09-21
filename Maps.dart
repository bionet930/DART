main() {
  var idiomas = {
//Clase: Valor
    'es': 'Español',
    'en': 'Ingles',
    'fr': 'Francés'
  };

  print(idiomas['fr']);

  //Nuevo Map
  var nuevoIdioma = {'ch': 'Chino'};
  idiomas.addAll(nuevoIdioma);

  print(idiomas);

  var alumnos = Map();
  alumnos[1] = 'Alumno 1';
  alumnos[2] = 'Alumno 2';
  alumnos[3] = 'Alumno 3';
  alumnos[4] = 'Alumno 4';

  print(alumnos);
}
