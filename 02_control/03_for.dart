import 'dart:io';

main() {


  // La idea de un ciclo for es que todo lo que se encuentra dentro de las llaves { } se repita la cantidad de veces que sea necesario, siempre y cuando se cumpla la condición ( i <= 10 ).
  // En este caso, cuando se inicializa el ciclo for, le estoy diciendo que se cree una variable ( int i = 1 ), y que se ejecute siempre que se cumpla la condición ( i <= 10 ). Por último le decimos que se incremente i en 1 ( i++ ).


  // for( int i = 1; i <= 10; i++ ) {
  //   print('index i:  ${  2 * 10  }');

  /*
    Dato de entrada: La base de la tabla de multiplicar
    (este dato debe de ser capturado por el usuario)
    ej: 2      2, 4, 6, 8, 10
    La salida esperada sería
    2 * 1 = 2
    2 * 2 = 4
    2 * 3 = 6
    ..
    2 * 10 = 20
  */

stdout.writeln('¿Cuál es la base de la tabla?');
int base = int.parse(stdin.readLineSync() ?? '0');

for (int i = 1; i <= 10; i++) {
  stdout.writeln('$base * $i = ${i * base}');
}

}