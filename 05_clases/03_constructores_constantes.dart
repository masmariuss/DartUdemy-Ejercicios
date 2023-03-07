


class Location {

  final double lat;
  final double lng;


  const Location( this.lat, this.lng);
}

main() {

  final sanFrancisco1 = new Location(18.2323, 39.9000);
  final sanFrancisco2 = new Location(18.2323, 39.9001);
  final sanFrancisco3 = new Location(18.2323, 39.9001);

  // print( sanFrancisco1 == sanFrancisco2 ); // False -> difieren los valores
  // print( sanFrancisco2 == sanFrancisco3 ); // False -> porque son instancias en memoria diferentes.

  const sanFrancisco4 = const Location(18.2323, 39.9000);
  const sanFrancisco5 = const Location(18.2323, 39.9001);
  const sanFrancisco6 = const Location(18.2323, 39.9001);

  print( sanFrancisco4 == sanFrancisco5 ); // Flase -> lng es diferente
  print( sanFrancisco5 == sanFrancisco6 ); // True -> // Cuando creamos clases con constructores constantes, que son asignadas a constantes, todo apunta al mismo lugar de memoria. Así, que si tiene los mismo valores, siempre va a apuntar al mismo lugar en memoria.

// Una constante es compilada en el tiempo que se ejecuta. 
// En el momento en el que se ejecuta, ahí se define el espacio en memoria del mismo.


}