import 'dart:io';
// Estoy habilitando todas las funciones y propiedades que vienen dentro de este paquete :io.

main() {

  // Imprimir en terminal
  // stdout.write('¿Hola Mundo?\n');

  stdout.writeln('¿Cuál es tu nombre?');

  // Leer información
  // String nombre = stdin.readLineSync();   // stdin.readLineSync() puede retornar un valor nulo, así que String no puede ser utilizado. Alternativas:
  String? nombre = stdin.readLineSync();
  // String nombre = stdin.readLineSync() ?? 'no hay valor'; 

  stdout.writeln('Tu nombre es: $nombre');

}