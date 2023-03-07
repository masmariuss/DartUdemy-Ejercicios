
class Herramientas {

  static const List<String> listado = ['Martillo', 'Llave inglesa', 'Destornillador'];
  // Con las propiedades static podemos acceder a propiedades o métodos sin instanciar la clase.
  // Las propiedades static foman parte de la clase, no forma parte de una nueva instancia.
  // Las propiedades static deberían ser solo de lectura.
  // No conviene hacer modificaciones.
  // Con final no podemos hacerlo solo de lectura, porque es List y permite modificaciones. No ocurre así con los valores primitivos.
  // Así que la solución a hacerlo solo de lectura es utilizar const.



// Un método static es un método que puedo llamar sin necesidad de instanciar una clase.
// Por ejemplo, quiero hacer un método que imprima todas las herramientas.
  static void imprimirListado() => listado.forEach(print);


}


main() {

  // final herr = new Herramientas();

  // herr.listado.forEach(print);

// Cómo acceder al listado sin crear una instancia? -> añadiendo static a List

  // Herramientas.listado.add('Tenzas'); -> Error con const

  // Herramientas.listado.forEach(print);

  Herramientas.imprimirListado();

}