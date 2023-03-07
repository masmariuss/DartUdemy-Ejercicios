

// El tipo de dato Future no es un dato primitivo, ni tampoco es un objeto como List o maps.
// Future en Dart es muy parecido en promesas de JS.
// Un Future no es más que una tarea asíncrona que se va a resolver en el futuro.

// Los Future rompen el enlace secuencial que hemos tenido durante todo el curso hasta el momento.
// El Future va a disparar una nueva línea del tiempo.


main() {

  Future<String> timeout = Future.delayed( Duration(seconds: 3), () {
    // Lo que estoy diciendo aquí es: en 3 segundo ejecuta este código
    print('3 segundos después!');
    // El Future se tiene que resolver y el resultado será un Future<String>.
    return 'Retorno del future';
    });

// Usualmente el Future se resuelve con timeout.
//  timeout.then( (texto) => print(texto));
  timeout.then( print ); // Esta es exactamente = timeout.then( (texto) => print(texto));
  // print es una función que ya viene en Dart. 
  // Con timeout.then( print ); estoy diciéndole a Dart que imprima los argumentos de forma secuencial.


// El ciclo funcionaría de la siguiente manera:
// 1. El compilador define el Future y empieza a contra los 3 segundos.
// 2. Llega al timeout, y espera a que se resuelva.
// 3. Continúa con print('Fin del main'); y lo imprime.
// 4. 3 segundos después se ejecuta print('3 segundos después!');
// 5. Hace el return 'Retorno del future'; 
// 6. Como ya hay retorno, ya se ha resuelto y se ejecuta el timeout.
// 7. Aparece en consola print(texto) el 'Retorno del future', que es el valore que se resuelve.


    print('Fin del main');
}

// Usualmente los Future son bastante utilizados para hacer peticiones HTTP, o leer algún archivo de manera asíncrona.
// Con Future logramos que nuestro programa siga funcionando y no se quede congelado en el mismo hilo de siempre.
// De esta manera nuestro ordenador puede realizar tareas simultáneamente.