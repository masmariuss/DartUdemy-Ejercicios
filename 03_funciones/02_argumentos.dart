
// ARGUMENTOS A LAS FUNCIONES --- POSICIONALES

// Cuando enviamos un valor a una función, recibe el nombre de argumento.
// Un argumento no es más que una variable que le enviamos internamente a una función.

// Las funciones están hechas para reutilizar código. Ese es su objetivo principal.
// Vamos a hacer una función que reciba un argumento e imprima un mensaje en consola.

// Empezamos con la palabra reservada void porque no vamos a regresar nada.
// Los argumentos se colocan dentro de los paréntesis de la función.

// Hay dos tipos de argumentos: los posicionales, y los nombrados.
// Los argumentos con noimbre se identifican con llaves: void saludar( {mensaje} ) {


// Los argumentos posicionales, por defecto, son obligatorios.
// A los argumentos podemos indicarles el tipado.

// Si queremos pasarle a la función más argumentos, colocamos coma (String mensaje, String nombre) a continuación del argumento.

// Parámetros (argumentos) posicionales opcionales: al envolver un conjunto de parámetros en [] se marcan como opcionales.

// Son argumentos posicionales porque para cambiarlos debo especificar el valor de las posiciones.
// En este ejemplo, para cambiar el valor de edad, primero tengo que indicar el valor de mensaje, luego el de nombre y entonces el valor de edad.

void saludar( String mensaje, [ String nombre = '<insertar nombre>', int? edad ]) {

  print( '$mensaje $nombre - $edad' );
}


// ARGUMENTOS A LAS FUNCIONES --- POR NOMBRE

// ¿Cómo se crean argumentos por nombre? Simplemente añadiéndole a los argumentos llaves {}.
// Con la palabra reservada required obligamos a que se introduzca el argumento señalado.



// Podemos enviar argumentos posicionales junto a los de nombre:
void saludar2( String? mensaje, { required String nombre, int veces = 10 }) {

// void saludar2({
//   String? mensaje, 
//   required String nombre, 
//   int veces = 10,
// }) {

  //Cuerpo de la función

  print( 'Saludar2: $mensaje $nombre - $veces' );


}


main() {

  // De esta manera llamamos a la función saludar();
  saludar('Hola', 'Mario', 36);


// Con ( ctrl + space ) aparece el menú con los argumentos por nombre. 
// Aparecen los argumentos que la función permite recibir.
// Quick fix: cuando aparece en Dart una función subrayada de rojo, podemos teclear ( ctrl + . ) y agrega el argumento requerido.
  saludar2( 'Hello', nombre: 'Ángela' );
  
}
