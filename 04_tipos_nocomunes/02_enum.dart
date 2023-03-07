


/* main() {

  int volumen = 1;  // 0 = volumen bajo, 1 = volumen medio, 2 = volumen alto. 

  switch( volumen ) {

    case 0: print('volumen bajo') ;
    break;
    case 1: print('volumen medio');
    break;
    case 2: print('volumen alto') ;
    break;

  }

} */


// Los enum son un tipo especial de clase utilizada para representar un número fijo de valores constantes.
// Es definida fuera del main().
// El nombre de la enumeración siempre va capitalizada la primera letra de cada palabra.

main() {

  Audio volumen = Audio.alto;

  switch( volumen ) {

    case Audio.bajo : print('volumen bajo') ; break;
    case Audio.medio: print('volumen medio'); break;
    case Audio.alto : print('volumen alto') ; break;

  }

}

enum Audio {
  bajo,
  medio,
  alto
}



// Podemos decir que con los enum acotamos un cierto número de posibilidades, como por ejemplo un tipo de rol de usuario o un tipo de configuración. 

// La ventaja de las enumeraciones es que facilitan mucho la lectura de nuestro código.
// Podemos visualizar qué valores son los permitidos en el volumen, sin necesidad de ver la documentación de nuestro programa.

