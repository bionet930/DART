// Funciones con Numeros
main() {
  //int
  int x = 1;
  //double
  double y = 1.1;

  num z = -1;

  print(z.abs()); //numero absoluto
  print(y.ceil()); //numero redondeado al alza
  print(y.floor()); //numero redondeado a la baja

  double real = 1; //numero convertido a 1.0

  print(real);

  //Pasar String a INT
  int uno = int.parse('1');

  //Pasar String a Double
  double unoPuntoUno = double.parse('1.1');

  //Pasar de INT a String
  String cadenaUno = uno.toString();

  //Igual para Doueble a String idem anterior linea

  //Indicar los decimales que queremos obtener
  double pi = 3.1416;
  String cadenaPi = pi.toStringAsFixed(2);
  print(cadenaPi);
}
