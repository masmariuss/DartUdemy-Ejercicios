main () {
  
  var a   = 10;
  final double b = 10;
  const double c = 10;

  // a = 20;
  // b = 20;
  // c = 20;

// final y const sirven para definir variables que no van a cambiar su valor después de su inicialización.

final personasFinal = ['Juan', 'Pedro', 'Fernando'];
const personasConst = ['Juan', 'Pedro', 'Fernando'];

// También podríamos encontrarnos este código escrito de la siguiente manera:
// final List<String> personasFinal = ['Juan', 'Pedro', 'Fernando'];
// List<String> personasConst = const['Juan', 'Pedro', 'Fernando'];

personasFinal.add('María');
// personasConst.add('María');

// print(personasConst);
// Unsupported operation: Cannot add to an unmodifiable list
// Solo utilizaremos const cuando vayamos a crear una lista que nunca vaya a ser modificada.
// Const es para definir una constante a nivel de compilación -> desde el momento en el que la aplicación es compilada, se genera el valor de la variable y no puede cambiar. Es una variable de memoria.
// Ventajas de const: es más rápida, más ligera porque no cambia, no tiene métodos de lectura, no tiene métodos para establecer sus valores.



// La palabra reservada late significa que más tarde se inicializará la variable.
// Cuando vayamos a utilizar late, ya va a tener un valor, ya va a estar inicializada.
// late es utilizado normalmente conjuntamente con las clases.
}