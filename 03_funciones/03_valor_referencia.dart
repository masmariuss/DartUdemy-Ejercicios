
String capitalizar( String texto ) {
  texto = texto.toUpperCase();
  return texto;
}



Map<String, String> capitalizarMapa( Map<String, String> mapa ) {

  
  // El  operador spread permite desempaquetar los elementos de una lista o de un mapa en otra lista o mapa.
  // Esto hace que mapa ocupe otro espacio de memoria y se llene de los datos del mapa de el argumento de entrada llamado mapa.
  // De esta manera se rompe la referencia

  mapa = { ...mapa };

// Así en esta siguiente sentencia, se está haciendo el UpperCase a la propiedad nombre de ese nuevo Map llamado mapa.
  mapa['nombre'] = mapa['nombre']?.toUpperCase() ?? 'No hay nombre';

  return mapa;
}



main(List<String> args) {
  
  // String nombre  = 'Mario';
  // String nombre2 = capitalizar(nombre);

  // print( nombre );
  // print( nombre2 );

  Map<String, String> persona = {
    'nombre': 'Tony Stark'
  };

  Map<String, String> persona2 = capitalizarMapa( persona );


  print( persona );
  print( persona2 );

}

// Los argumentos que son enviados por valor son los primitivos: int, double, bool, String.
// Todos los objetos como mapas, listas, instancias de clases, son mandadas por referencia.
// En dart los valores primitivos se pasan por valor, no asi los objetos.
// Cuando se pasan los objetos como argumentos, lo que pasa es la posición de memoria, asi que es el mismo espacio de memoria que se usa en la funciona lllamada.