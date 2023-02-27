
// Una función lambda o flecha (arrow function) no es más que una función común y corriente pero resumida.
// Lo cual nos ayuda a que el código sea más fácil de ver y más fácil de mantener. 

main() {

  int a = 10, b = 20; // En este caso no es otra sentencia, es la misma definición de int de 2 variables locales.
  int resultado = sumarFlecha (10, 20);


  List<int> listado = [1,2,3,4,5,6,6,7,8,9,10,10,1];

// El tipo de dato List tiene un método propio que se llama where. 
// El ( numero ) indica cada una de las iteraciones, recorrerá todos, y por cada número se hará una vuelta -> Parecido a un ciclo for.
// Por cada numero va a pedir un bool, y cuando sea true ese numero pasará a ser parte de un nuevoListado.



/*   var nuevoListado = listado.where ((numero) {
    return numero > 4;   // Va a filtrar los números mayores de 4 -> Esos serán los componentes del nuevoListado.
  } ); */



  // Los métodos básicamente son funciones, pero que reciben este nombre cuando se encuentran dentro de un objeto o una clase.
  // El método where retorna un iterable. 
  // Tengo que mandar una función que me permita evaluar cuáles de estos elementos del listado quiero regresar.

// ¿Cómo convertir la anterior función en una función flecha?
  var nuevoListado = listado.where ( (n) => n > 4 );

  print(nuevoListado.toSet().toList());
  // El resultado (5, 6, 6, 7, 8, 9, 10, 10) está entre paréntesis porque es un iterable.
  }


//¿Qué es un iterable? Es un elemento que puede barrerse en un ciclo for, o que podemos trabajar de forma secuencial. Es otro objeto de Dart, es otro tipo de dato, así como los mapas, los String...
// Los iterables nos proporcionan métodos muy útiles. Ejemplo: conseguir de un listado solo los números que son únicos -> print(nuevoListado.toSet()); -> Los set no permiten repetición de valores. 
// Y nuevamente podríamos volverlo a convertir en List -> print(nuevoListado.toSet().toList());

// Los parámetros de las funciones pueden tener cualquier nombre.
// Con esos parámetros van a ser conocidos en el cuerpo de la función.
// No sabemos cómo se van a llamar las variables fuera de la función (en este caso a y b).

int sumar ( int x, int y ) {
  return x + y;
}

// Cuando tenemos una sola instrucción, y esa instrucción es el return de lo que queremos ejecutar, podemos utilizar las arrow function.

int sumarFlecha ( int x, int y ) => x + y;
