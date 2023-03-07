


import 'clases/mi_servicio.dart';

main() {

  final spotifyService1 = new MiServicio();
  spotifyService1.url   = 'http://api.spotify.com';

  final spotifyService2 = new MiServicio();
  spotifyService2.url   = 'http://api.spotify.com';

  print( spotifyService1 == spotifyService2 ); // False -> Uso de final, son dos instancias en espacio de memoria diferente.

  print( spotifyService1.url ); 
  print( spotifyService2.url ); 
}
// El patrón singleton me va a ayudar a que en memoria solo exista una instancia a new MiServicio().
// Siempre va a regresar la misma.
// Es súmamente útil cuando queremos manejar la información centralizada en un único lugar, porque todas las propiedades y métodos que tenga este servicio, van a ser compartidas por todos los lugares donde se utilice.
// La configuración del singleton se realiza en el servicio, no en el main.