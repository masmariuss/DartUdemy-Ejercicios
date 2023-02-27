// Queue es muy útil cuando tenemos una secuencia de números o valores para los cuales vamos a tener que procesar uno tras otro de manera consecutiva.
// Su uso es necesario cuando se necesita tener acceso a la información en el mismo orden en el que se almacena en la colección.
// Para utilizar Queue debemos primero importarlo de import 'dart:collection'; es un tipo de dato que se encuentra en este paquete.


// Se usa cuando se necesita procesar en forma secuencial una lista de datos, ya que una cola es una colección que se puede manipular en ambos extremos. 
// Se usa con frecuencia cuando se desea crear una colección de primero en entrar, primero en salir, ya que se leen en el orden en el que se insertaron.



import 'dart:collection';

main() {

// Una Queue siempre hay que inicializarla, si no, no se podría usar como cola (la palabra new es opcional).
// Si le das un print a una cola sin inicializar te saldría null.
// En cambio, si defines una cola te saldria {} vacía por supuesto, pero lista para su uso.
// Queue<int> cola = Queue();




  Queue<int> cola = new Queue();

  cola.addAll([10,20,30,40,50]);

  print(cola);

  print(cola is Queue);

  Iterator i = cola.iterator;


// De esta manera obtenemos cuál es el valor actual que se encuentra en el iterador.
// Mucha gente prefiere utilizar el ciclo for para realizar barridos de elementos de manera secuencial.

  while( i.moveNext()) {
    print( i.current);
  }

// Queue es muy parecido a la lista, pero a diferencia, Queue posee métodos para insertar elementos al inicio o al final, entre otros.

// cola.addLast(x);
// cola.addFirst(x);
// Con esto podemos simular el comportamiento de "primero en entrar, último en salir".
// Para eliminar se usa el mismo concepto: 
// removeFirst () Elimina el primer elemento de la cola
// removeLast () Elimina el último elemento de la cola.

}

