import 'dart:io';


main() {

// File no es un tipo proppio de Dart, pero podemos importarlo de import 'dart:io'.
// Este es el path donde estoy ejecutando mi archivo de Dart

// OSX y Linux
// File file = new File( Directory.current.path + '/04_tipos_nocomunes/assets/personas.txt');

// Windows
  File file = new File( Directory.current.path + '\\04_tipos_nocomunes\\assets\\personas.txt');


//  print( file );




// Con Future<String> f = file.readAsString();
// De esta manera imprime:
// Fin del main
// 1- Mario
// 2- Ana
// 3- Pedro
// 4- Juana

// Primero lee personas.txt, y mientras lo hace, continúa e imprime el 'Fin del main'.
// Luego acaba de leer el txt e imprime los nombres.
// La lectura del txt siempre es más lenta que el código secuencial.



// Con String f = file.readAsStringSync();
// De esta manera imprime:
// 1- Mario
// 2- Ana  
// 3- Pedro
// 4- Juana
// Fin del main

// Como lo hace de manera síncrona el código no sigue, y ejecuta el archivo .txt, aparecen las personas, y por último 'Fin del main'.

Future<String> f = file.readAsString();
// String f = file.readAsStringSync();

f.then( (data) => print(data));
// f.then( print );

// print(f);


print( 'Fin del main' );

}

// Con archivos grandes interesará hacerlo de forma asíncrona, utilizando future, para que el programa no se bloquee .