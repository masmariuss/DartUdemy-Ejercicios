import 'dart:io';


main() {
  String continuar = 'y';
  int contador = 0;

// La principal diferencia entre un ciclo while y un do while, es que con do while siempre ejecutará el código al menos una vez.
// En cambio

  do {
    contador++;
    stdout.writeln('Contador : $contador');

    stdout.writeln('Desea continuar? (y/n)');
    continuar = stdin.readLineSync() ?? 'n';
  } while (continuar == 'y');
}