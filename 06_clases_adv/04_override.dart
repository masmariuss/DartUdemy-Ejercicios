class Persona {

  String nombre;
  int edad;

  Persona(this.nombre, this.edad);

  void imprimirNombre() => print('Nombre: $nombre, Edad: $edad');
}


class Cliente extends Persona {

  String? direccion;
  List ordenes = [];

  Cliente(int edadActual, String nombreActual):
    super(nombreActual, edadActual);

  @override
  void imprimirNombre() {
    super.imprimirNombre(); // con la palabra reservada super hacemos referencia a la clase que está extendiendo (Persona). 
    print('Cliente: $nombre ($edad)');
  // Cuando estemos sobre escribiendo un método que la clase padre tiene, tenemos que utilizar @override.

  // Resultado en consola:
  // Nombre: Pedro, Edad: 33
  // Cliente: Pedro (33)

  }

}



main(List<String> args) {

  final pedro = new Cliente(33, 'Pedro');

  pedro.imprimirNombre();

  // pedro.ordenes


}