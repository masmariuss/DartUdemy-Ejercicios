import 'dart:io';

// El await solo lo podemos utilizar en una función async
main() async {

  String path = Directory.current.path + '\\04_tipos_nocomunes\\assets\\personas.txt';


// Con await espera a que este Future se resuelva, y lo que sea que resuelva ese Future, es lo que va a retornar esa función.
// Con await esperamos a su resolución.
// Por eso la impresión en consola es primero los nombres (.txt) y luego el 'Fin del main':
// 1- Mario
// 2- Ana  
// 3- Pedro
// 4- Juana
// Fin del main


  String texto = await leerArchivo(path);
  print( texto );

  print('Fin del main');



}

// Siempre colocar el tipo de dato que retorna el Future, en este caso Future<String>.
Future<String> leerArchivo( String path ) async {

  // Este código sirve para hacer referencia al archivo .txt, y queda almacenado en la variable file.
  File file = new File( path );
  return file.readAsString();


}

// async transforma una función común y corriente a una misma función que retorna un Future