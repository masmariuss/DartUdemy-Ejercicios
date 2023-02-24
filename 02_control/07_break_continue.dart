


main() {

  for ( int i = 0; i < 10; i++) {

    // Si se cumple el if, se ejecuta el continue. El continue es para seguir con el siguiente valor de i.
    // Con el continue, salta a la siguiente iteración, y no sigue ejecutando todas las líneas que estén después.
    if (i == 5) {     
      continue;
    }

    print(i);

    // Utilizaremos break para salirnos totalmente del ciclo cuando se cumpla la condición.
    if ( i == 2 ) {
      break;
    }

  }

}