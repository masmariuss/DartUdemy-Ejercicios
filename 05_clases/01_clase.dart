
// Me coloco sobre new Persona() y tecleo ctrl+.
import 'clases/persona.dart';

main() {

  // final persona = {
  //   'nombre': 'Mario',
  //   'edad'  : '36',
  //   'bio'   : 'Nació en España'
  // };

  // print(persona['edad']);

  // Primero vamos a crear una instancia de la clase. 
  // Así es como se conoce cuando vamos a utilizar la clase para crear una variable.
  // En Persona persona estamos diciendo: tengo la variable persona que es de tipo Persona.
  // Para crear la nueva instancia utilizamos = new Persona(); como si fuera una nueva función.
  // new es opcional, aunque se recomienda para crear nuevas instancias.
  // También podríamos utilizar var o final en vez de Persona.

  // Persona persona = new Persona();
  // var persona = new Persona();
  final persona  = new Persona( edad: 40, nombre: 'Paquita' );
  final persona2 = new Persona.persona40('Marcos');

  // persona.nombre = 'Mario';
  // persona.edad   = 36;
  // persona.bio    = 'Nació en España';

// Operador de cascada (..)
// La notación en cascadas (..) permiten realizar una secuencia de operaciones sobre el mismo objeto.

  // persona..nombre = 'Mario'
  //        ..edad   = 36;
  //        ..bio    = 'Nació en España'; // privado

  // persona.bio     = 'Cambié el valor!';


  // Podemos sobrescribir alguna propiedad que tenga una clase.
  // Todas las clases que hagamos, o todos los objetos en Dart, se extienden o heredan todas las propiedades de un objeto o una clase global llamada Object.

  // print(persona.bio);
  // En consola aparece: CAMBIÉ EL VALOR!
  // Hola, soy una propiedad privada. 
  // Llama al método get bio, que se encarga de traer la propiedad _bio.
  
  // print(persona.toString()); el .toString() no es necesario, porque el print de la persona está implícito que necesita la forma del String.
  //Si hacemos un print de un objeto que pertenece a una clase, este se va a buscar el método toString.
  // Si no lo hemos creado nosotros, nos va a devolver la instancia de Persona, pero si lo definimos como en este caso, con el @override lo sobrescribimos y se ejecuta ese.

  print( persona2 );

}

// El nombre de las clases siempre va en UpperCamelCase
