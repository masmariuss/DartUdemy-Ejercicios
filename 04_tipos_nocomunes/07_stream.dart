

// Un stream es una corriente de datos, como si fuera un río en el cual puede ser que en cualquier momento recibamos información.
// Los Stream también son asíncronos, pero a diferencia del Future, tenemos que definir qué va a hacer cuando reciba la data.



import 'dart:async';

main() {
  // Tipamos StreamController para asegurarnos que el flujo de información que se recibe es del tipo correcto.
  final streamController = new StreamController<String>.broadcast();
  // Otra forma de tipar el Stream -> final StreamController<String> streamController = StreamController();

  // Por defecto, el listen es de una sola suscripción.
  // El broadcast transforma mi streamController en un control de múltiples suscripciones.

// listen necesita una función que ejecutar cuando se recibe un valor.
  streamController.stream.listen( 
    (data) => print('Despegando! $data'),
    onError: (err) => print('Error! $err'),
    onDone: () => print('Misión completa!'),
    cancelOnError: false
  );

  streamController.stream.listen( 
    (data) => print('Despegando Stream 2! $data'),
    onError: (err) => print('Error Stream 2! $err'),
    onDone: () => print('Misión completa Stream 2!'),
    cancelOnError: false
  );
    // Si recibimos un error y queremos cancelar la carga del programa, cancelar el stream para que no escuche nada más, tenemos que colocarlo en la definición del listen utilizando cancelOnError: true.

    // En consola queda así:
    // Fin del main
    // Despegando! Apollo 11
    // Despegando! Apollo 12
    // Despegando! Apollo 13
    // Error! Houston, tenemos un problema!


    // Con onDone: () => se ejecuta cuando se lleva a cabo .sink.close().
    // Fin del main
    // Despegando! Apollo 11
    // Despegando! Apollo 12
    // Despegando! Apollo 13
    // Error! Houston, tenemos un problema!
    // Despegando! Apollo 14
    // Despegando! Apollo 15
    // Misión completa!


// Cómo colocamos información a este stream?
// sink es como agregar un nuevo elemento, la punta de entrada del stream.
  streamController.sink.add('Apollo 11');
  streamController.sink.add('Apollo 12');
  streamController.sink.add('Apollo 13');
  // El manejo de los errores tiene que estar préviamente definido en streamController -> onError: (err) => print('Error! $err')
  // Mandamos al stream en forma intencional un error: sink.addError (adiciona un error al stream).
  streamController.sink.addError('Houston, tenemos un problema!');
  streamController.sink.add('Apollo 14');
  streamController.sink.add('Apollo 15');


  // Es importante cerrar el stream cuando ya sabemos que no vamos a recibir más información. 
  // Por ejemplo cuando se hace log out.
  streamController.sink.close();

  print('Fin del main');

  // Los streamController, al ser asíncornos, vamos a ver cómo sería el flujo de información.

  // Cuando ejecutemos el programa primero empieza con el main(), luego va a definir una variable llamada final streamController.
  // Posteriormente, definimos cómo se vaa trabajar el stream, pero no se ejecuta nada, simplemente le decimos cómo va a reaccionar cuando llegue información.
  // Luego llega streamController.sink.add('Apollo 11'); que simplemente agrega al inicio del stream 'Apollo 11'. Y así se ejecuta la función (data) { print('Despegando! $data'); }); pero esto lo va a hacer asíncrono.
  // El código secuencial es más rápido que el código asíncrono.
  // Así que antes de print('Despegando! $data'); se ejecutará print('Fin del main');

  // En consola aparece así:
  // Fin del main
  // Despegando! Apollo 11

}