

// En Dart se utiliza lowerCamelCase para la definición de variables, y UpperCamelCase para las clases.

main() {

  // ===== Número
  int a = 10;
  double b = 5.5;
  int? c; // int? c = null;

  int _a = 30;
  double $b = 40;

  // print(_a + $b);


  // ===== String

  String nombre ='Mario';
  String nombre2 = "Mario";
  String nombre3 = 'O\'Connor'; // String nombre3 = "O'Connor";

  String apellido = 'de la Torre';
  String nombreCompleto = '$nombre $apellido';

  String multilinea = '''
  Hola mundo
  ¿Cómo estás?
  $nombreCompleto
  O'Connor''';

  // print (nombre == nombre2);

  print (nombreCompleto.runtimeType);


  // ===== Booleans
  bool isActive = true;
  bool isNotActive = !isActive;

  // print(isNotActive);



  // ===== Listas (Lists)
  // Las listas son un conjunto de datos, una colección de elementos. 
  // Dependiendo de cómo se definan, no tienen por qué tener el mismo tipo de dato.

  List<String> villanos = ['Lex', 'Red Skull', 'Doom']; 
  //                          0         1         2

// Las List por defecto es de tipo genérico, es decir, aceptan todos los tipos de datos. 
// Si no especificamos qué tipo de dato es List se entiende como dynamic.
// Dart va a inferir los tipos en tiempo de ejecución del programa.
// List numeros = [1, 'Paco', true]; -> implícitamente esto es List<dynamic> numeros.
// Es recomendable definir el tipo de dato que incluirá List.

  // Las List son en base 0
  print(villanos[0]);
  // Lex
  villanos[0] = 'Superman';
  print(villanos);
  // Se ha cambiado el valor de la posición [0] por el de 'Superman'.
  // [Superman, Red Skull, Doom]

  // Si quiero agregar otro elemento a la lista, esta viene con muchos métodos.
  // Los métodos no son mas que funciones que están incluidas en ese tipo de dato.

  // El método más común de List es .add   (dynamic value) -> void
  // .add es el nombre del método
  // dynamic es el tipo de dato
  // value es el valor que vamos a mandar como argumento a la función.
  // -> esta flecha indica que es una función que retorna void.
  // que retorna void significa que no retorna nada, que retorna vacío, nada es su valor de retorno. (diferente a null)

  villanos.add('Duende Verde');
  villanos.add('Duende Verde');
  villanos.add('Duende Verde');
  // print (villanos);
  // [Superman, Red Skull, Doom, Duende Verde, Duende Verde, Duende Verde]
  // List acepta valores repetidos, por eso podemos añadir 3 veces a 'Duende Verde'.


// Podemos añadir varios elementos de la siguiente forma:

  villanos..add('Thanos')
          ..add('Gorr');


  var villanosSet = villanos.toSet();
  //print(villanosSet.toList());
  // [Superman, Red Skull, Doom, Duende Verde, Thanos, Gorr]

  // ¿Cómo podemos eliminar todos los resultados duplicados de una List?
  // Set no admite valores repetidos, así que al convertir List a Set, estos valores se eliminan.



  // ===== Conjuntos (Sets)
  // Las Lists y los Sets son muy parecidos. Su principal diferencia reside en que los Sets no permite valores duplicados.

  Set<String> villanos2 = {'Lex', 'Red Skull', 'Doom'};

  villanos2.add('Duende Verde');
  villanos2.add('Duende Verde');
  villanos2.add('Duende Verde');


  //print(villanos2);


// Transformando la List en un Set y luego del Set a la List.



// ===== Mapas (Maps)

// Un mapa en dart es un tipo de colección que tiene pares de valores, es decir, tiene su llave (key) y su valor (value).


Map<String, dynamic> ironman = {
  'nombre': 'Tony Stark',
  'poder' : 'Inteligencia y el dinero',
  'nivel' : 9000,
};

// print(ironman['nivel']);

Map<String, dynamic> capitan = new Map();

capitan.addAll({
  'nombre': 'Steve',
  'poder' : 'Soportar droga sin morir',
  'nivel' : 5000, 
});


// capitan.addAll(ironman);

// print(capitan);


Map<int, int> tabla = {
    1:2,
    3:4,
    5:6,
    7:8,
    9:10
  };

  // print(tabla[10]);
  // print(tabla[9]);

}