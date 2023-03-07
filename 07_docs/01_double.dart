// El double es simplemente una variable que puede alojar un número y a su vez ese número puede tener decimales.
// Pero también es cierto que lo que estoy haciendo es crear una instancia de la clase doble y a esa instancia la voy a llamar número.
// Es decir, numero sería una instancia de double.
// Esto quiere decir que tengo a mi disposición todas las propiedades y métodos que la clase double tiene.


// RECORDATORIO
// Podemos decir que una instancia en Dart es un objeto que responde o encaja con unas características determinadas, que se encuentran detalladas en la clase a la que está ligado dicho objeto.
// Qué es una clase? A grandes rasgos, se la puede definir como un contenedor que tiene unos datos específicos de un elemento.

// Las propiedades se marcan con el icono de llave inglesa, mientras que los métodos con las aristas de un cubo.
// Las propiedades no llevan parentesis.

main() {

  double numero = 3.141592;
  double numeroNeg = -3.141592;
  double infinito = double.infinity; // hacemos uso de las propiedades estáticas, no hacemos instancia de clase.


  // print('Firma: $numero');
  // Esto me está llevando al método .toString(). Sería lo mismo que esto:
  // print( 'Firma: ${ numero.toString() }');

  // Aquí la variable numero tiene un valor numérico, y como quiero utilizarla en un String para concatenarlo, tengo que pasarlo por su método.toString().

  // print( 'Firma: ${ numero.sign } :: $numero' ); // 
/*   sign property (num sign)
  The sign of the double's numerical value.
  Returns -1.0 if the value is less than zero, +1.0 if the value is greater than zero, and the value itself if it is -0.0, 0.0 or NaN. */

  print( 'isFinite: ${ numero.isFinite } :: $numero' ); // Dice si un número es finito, está limitado.
/*   isFinite property (bool isFinite)
Whether this number is finite.
The only non-finite numbers are NaN values, positive infinity, and negative infinity. All integers are finite.
All numbers satisfy exactly one of isInfinite, isFinite and isNaN. */

  print( 'isFinite: ${ infinito.isFinite } :: $infinito' );
  
  print( 'abs: ${ numero.abs() } :: $numero' ); // Método que retorna el valor absoluto del número.
  print( 'abs: ${ numeroNeg.abs() } :: $numeroNeg' ); 
/* abs abstract method Null safety     num abs()
The absolute value of this number.
The absolute value is the value itself, if the value is non-negative, and -value if the value is negative.
Integer overflow may cause the result of -value to stay negative. */

  print( 'ceil: ${ numero.ceil() } :: $numero' ); // Devuelve 4, que es el siguiente número entero que le sigue a 3.1415.
  // print( 'ceil: ${ infinito.ceil() } :: $numero' ); // Error -> No existe un número posterior al infinito.

  print( 'ceilToDouble: ${ numero.ceilToDouble() } :: $numero' ); // Siguiente número entero, pero transformado a double.

  print( 'round: ${ numero.round() } :: $numero' ); // Redondeo de números.
  print( 'roundToDouble: ${ numero.roundToDouble() } :: $numero' ); // Redondeo manteniendo el decimal.

  print( 'clamp: ${ numero.clamp(1, 3) } :: $numero' ); // clamp devuelve un numero sujeto al rango. Si está dentro del rando se queda tal cual.
  print( 'clamp: ${ numeroNeg.clamp(1, 3) } :: $numeroNeg' );
  print( 'clamp: ${ 2.2.clamp(1, 3) } :: 2.2' );


}