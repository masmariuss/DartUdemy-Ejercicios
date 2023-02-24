import 'dart:io';


main() {

  // Lo que está dentro de los ( ) es una condición que tiene que regresar un valor booleano, es decir, true or false.
  // Si la condición se cumple, entonces va a ejecutar todo lo que se encuentra dentro de los curly brackets.
  // Mientras la condición sea válida (true), el ciclo while volverá a dar otra vuelta, hasta que la condición ya no se cumpla.
  // Si la condición no se cumple, entonces va a salirse del ciclo while, y a seguir trabajando con las línes sucesivas de código.


  String continuar = 'y';
  int contador = 0;

  while ( continuar == 'y' ) {

    contador++;
    stdout.writeln('Contador : $contador');

    stdout.writeln('Desea continuar? (y/n)');
    continuar = stdin.readLineSync() ?? 'n';
    
  }

}