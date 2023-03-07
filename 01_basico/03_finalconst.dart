main () {
  
  var a   = 10;
  final double b = 10;
  const double c = 10;

  // a = 20;
  // b = 20;
  // c = 20;

// final y const sirven para definir variables que no van a cambiar su valor después de su inicialización.
// La lista final va a poder crecer, pero no va a poder ser sobrescrita. Puede cambiar, pero solo puede cambiar ese objeto.
// final personasFinal apunta a una dirección en memoria, y este no ha cambiado. Cambia el objeto lista.
// Lo que no podríamos hacer es decirle a final personasFinal que sea otra cosa.

final personasFinal = ['Juan', 'Pedro', 'Fernando'];
const personasConst = ['Juan', 'Pedro', 'Fernando'];

// También podríamos encontrarnos este código escrito de la siguiente manera:
// final List<String> personasFinal = ['Juan', 'Pedro', 'Fernando'];
// List<String> personasConst = const['Juan', 'Pedro', 'Fernando'];
// var personasConst = const['Juan', 'Pedro', 'Fernando']; 
//    -> En este caso podemos cambiar la dirección en memoria a la que apunta, señalando otro objeto.
//    var personasConst = [''];

personasFinal.add('María');
print(personasFinal);
// [Juan, Pedro, Fernando, María]


// personasConst.add('María');
// print(personasConst);
// Unsupported operation: Cannot add to an unmodifiable list

// Solo utilizaremos const cuando vayamos a crear una lista que nunca vaya a ser modificada.
// Const es para definir una constante a nivel de compilación -> desde el momento en el que la aplicación es compilada, se genera el valor de la variable y no puede cambiar. Es una variable de memoria.
// Ventajas de const: es más rápida, más ligera porque no cambia, no tiene métodos de lectura, no tiene métodos para establecer sus valores.


// Una constante en tiempo de compilación tendrá el mismo valor cada vez que se ejecuta una aplicación, mientras que una constante en tiempo de ejecución puede cambiar cada vez.
// const : Almacena un valor constante de tiempo de compilación.
// final : Almacena un valor constante de tiempo de ejecución.

// El tiempo de compilación es el tiempo desde que el programa es cargado por primera vez hasta que el programa es parsed.
// "Parsing" significa analizar y convertir un programa en un formato interno que un entorno de ejecución pueda realmente ejecutar, por ejemplo el motor JavaScript dentro de los navegadores.

// Se conoce como tiempo de ejecución (Runtime) en programación al intervalo de tiempo que va desde que el sistema operativo comienza a ejecutar las instrucciones de un determinado programa, hasta que finaliza la ejecución del mismo, ya sea porque el programa concluyó exitosamente o porque fue finalizado por el sistema operativo a causa de un fallo en tiempo de ejecución.

// La palabra reservada late significa que más tarde se inicializará la variable.
// Cuando vayamos a utilizar late, ya va a tener un valor, ya va a estar inicializada.
// late es utilizado normalmente conjuntamente con las clases.
}