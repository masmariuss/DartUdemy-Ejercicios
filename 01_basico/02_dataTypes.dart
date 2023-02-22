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
  // print (multilinea);


  // ===== Booleans
  bool isActive = true;
  bool isNotActive = !isActive;

  // print(isNotActive);



  // ===== Lists
  // Una lista no es más que una colección de datos que tienen algo en común entre sí.

  List<String> villanos = ['Lex', 'Red Skull', 'Doom']; // Son en base 0
  //                          0         1         2

  villanos[0] = 'Superman';

  villanos.add('Duende Verde');
  villanos.add('Duende Verde');
  villanos.add('Duende Verde');

  //print (villanos);

  var villanosSet = villanos.toSet();
  //print(villanosSet.toList());




  // ===== Sets
  // Las Lists y los Sets son muy parecidos. Su principal diferencia reside en que los Sets no admiten duplicados.

  Set<String> villanos2 = {'Lex', 'Red Skull', 'Doom'};

  villanos2.add('Duende Verde');
  villanos2.add('Duende Verde');
  villanos2.add('Duende Verde');


  //print(villanos2);

// ¿Cómo podemos eliminar todos los resultados duplicados de una List?
// Transformando la List en un Set y luego del Set a la List.



// ===== Maps
// La diferencia entre un Set y un Map (los dos comienzan con curly brackets) es que Map tiene pares (llave y valor).


Map<String, dynamic> ironman = {
  'nombre': 'Tony Stark',
  'poder': 'Inteligencia y el dinero',
  'nivel': 9000,
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

  print(tabla[10]);

}