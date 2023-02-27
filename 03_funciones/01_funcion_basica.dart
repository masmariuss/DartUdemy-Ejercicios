

void main() {

// Una función tiene varias características en particular:
//  1. Tiene un cuerpo. Todo lo que se encuentra entre las llaves { }.
//     Lo que hay dentro del cuerpo es lo que se va a ejecutar cuando se llame al main().
//     La función main() es la primera que se ejecuta.

// print('Hola Mario');
// Esto también es una función, aunque no lleve llaves.

// Las funciones sirven para reutilizar código.

  var mensaje = saludar();

  print(mensaje);

}

// Es importante indicar el tipo de valor de retorno, qué tipo de información regresa.
// El valor de retorno es algo explícito con la pabra reservada return.
// Cualquier línea de código que escribamos después del return será dead code, es decir, no se ejecutará.



// void saludar() {
//   print('Hola Mario');
// }

// Cuando no tengamos un return explícito en nuestra función, obtendremos un retorno de null.
// Si la función no devuelve nada (no tiene return) tenemos que poner la palabra reservada void. De esta manera prevenimos errores de tipo null.
// Es decir, cuando no necesitamos regresar un valor, decimos que es del tipo void.

String saludar() {

  return 'Hola Mario';
  // print('Hola Mario');

}
