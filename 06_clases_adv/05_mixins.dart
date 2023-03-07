// Los mixins son parecidos a los extends.
// Utilizamos los mixins para darles, para transferir las propiedades y métodos que tiene una clase a otra.

// Cualquier clase que hagamos puede ser un mixin.
// Pero cuando definimos un mixin con esta palabra reservada, tendrá ciertas características especiales.

// La principal característica de los mixins es que no pueden ser instanciados. Pasa lo mismo que con las clases abstractas.
// Se diferencia de una clase abstracta en que los mixins no pueden tener constructores.

// Los mixins no se utilizan con la palabra extends, sino con with.

// class
mixin Logger {

  void imprimir( String texto ) {
    final hoy = DateTime.now();
    print('$hoy :::: $texto');
  }

}

class Logger2 {

  void imprimir2( String texto ) {
    final hoy = DateTime.now();
    print('$hoy :::: $texto');
  }

}


abstract class Astro with Logger {

  String? nombre;

  Astro() {
    imprimir('-- Init del Astro --');
  }

  void existo() {
    imprimir('-- Soy un ser celestial y existo --');
  }

}

class Asteroide extends Astro with Logger, Logger2 { // Logger2 es una clase y se puede utilizar con with.

  String? nombre;

  Asteroide( this.nombre ) {
    // imprimir('Soy $nombre');
    imprimir2('Soy $nombre');
  }

}



main() {
  
  final ceres = new Asteroide('Ceres');

}