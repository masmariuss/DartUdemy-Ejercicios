main() {

  Future<String> timeout = Future.delayed( Duration(seconds: 3), () {

// Esta condición siempre se va a cumplir, pues 1 es == 1.
    if ( 1 == 1 ) {
      throw 'Auxilio!, explotó esta cosa';
    }

    return 'Retorno del future';
  });

//  timeout.then( (texto) => print(texto));
  timeout.then( print ) // Esta es exactamente = timeout.then( (texto) => print(texto));
         .catchError( (error) => print(error) ); // No es necesario el print, puede ser mostrar un mensaje al usuario, cancelar el loading...
         // Cualquier error del Future va a ser procesado en esta función .catcherror.


    print('Fin del main');
}