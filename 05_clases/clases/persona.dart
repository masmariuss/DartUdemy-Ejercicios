

class Persona {

  // Campos o propiedades
  // Por defecto todas las propiedades y m'etodos de una clase son públicas.
  // Es decir, pueden ser utilizadas por cualquier programa que utilice la instancia de Persona.
  String? nombre;
  int? edad;
  // Si quiero transformar bio como una propiedad privada, simplemente le añado _bio. 
  // Si ahora _bio es privada, solo la podremos utilizar aquí en class Persona. Solo la podremos utilizar en el contexto que es definido.
  // Uno de los principales usos de una propiedad privada es controlar de manera estricta cómo se establecen valores o cómo se recuperan valores de la misma.
  String _bio = 'Hola, soy una propiedad privada';

  // Get y sets

  // String get bio {
  //   return _bio;
  // }

  String get bio => _bio.toUpperCase();

// El setter es el mecanismo para establecer el valor a una propiedad.
// Un set siempre devuelve un void, solo establece un valor.

  // set bio( String texto ) { // no importa que el set se llame bio, no se confunde con get bio porque son cosas diferentes.
  //   _bio = texto;
  // }

  set bio( String texto ) => _bio = texto;

  // Get y sets no son más que funciones -> Dentro de una clase una función es conocida como un método.
  // Son métodos que sirven para simular que tenemos alguna propiedad.
  // Conviene poner qué tipo de información regresa.


  // Constructores
  // Los Constructores son un método que se llama en el momento que creamos una nueva instancia de esta clase.
  // Se llama al constructor cuando ejecutamos la instancia new Persona().
  // El constructor tiene que tener el mismo nombre de la clase.

  // Persona( int edad, String nombre ) {
  // this.edad   = edad;
  // this.nombre = nombre;

  // Esto se puede resumir de esta manera:
  Persona ({ this.edad = 0, this.nombre = 'Sin Nombre' });
  // Persona ( this.nombre ); Nos aparece error porque el constructor ya ha sido definido.
  // Otra manera de hacer esto es crear constructores con nombre:
  // Se crea con el nombre del constructor (Persona) y el nombre que queremos darle (.persona30).
  Persona.persona30( this.nombre ) {
    this.edad = 30;
  }

  Persona.persona40( String nombre ) {
    this.edad   = 40;
    this.nombre = nombre;
  }



  // print('Constructor');
  // _bio = 'Hola desde el constructor';

  
// Cuando tenemos un argumento en un constructor que se llama igual que una propiedad, tenemos que utilizar el this.
// this. va a hacer referencia a la propiedad mientras que al otro lado de la igualdad hará referencia al argumento que reciben. 



  // Métodos
// @override le dice a Dart que debe sobrescribir el método padre. 
// El padre sería el Object ( Persona ), y tiene que sobrescribir el método toString().
    // Aquí estoy diciendo que cuando alguien llame persona.toString(), imprima 'Hola Mundo'.
    // return 'Hola Mundo';

  // String toString() {
  //   return '$nombre $edad $_bio';
  // }
  
@override    
  String toString() => '$nombre $edad $bio';
}



// En Dart cada archivo es practicamente una biblioteca, asi que hay 2 modificadores de visibilidad:
// .  visible en todas parte, public,
// .  visible solo en la biblioteca o archivo,no hay privado en clase

// Se puede heredar la propiedad privada mediante un extends, siempre y cuando la clase heredada esté dentro del mismo archivo
// Si se encuentra en archivos diferentes, no se puede tener visibilidad mediante herencia de una propiedad privada.