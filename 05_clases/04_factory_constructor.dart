
class Rectangulo {

  int? base;
  int? altura;
  int? area;
  String? tipo; // cuadrado es base = altura, rectángulo es base != altura.

  factory Rectangulo( int base, int altura ) {
    if (base == altura) {
      return Rectangulo.cuadrado(base);
    } else {
      return Rectangulo.rectangulo(base, altura);
    }
  }
  // Con factory se le está pidiendo una nueva instancia de Rectangulo.
  // Un factory por si solo no crea una nueva isntancia.
  // En este caso retorna una instancia préviamente creada.

  Rectangulo.cuadrado( int base ) {
    this.base   = base;
    this.altura = base;
    this.area   = base * base;
    this.tipo   = 'Cuadrado';
  }

  Rectangulo.rectangulo( int base, int altura ) {
    this.base   = base;
    this.altura = altura;
    this.area   = base * altura;
    this.tipo   = 'Rectángulo';
  }

  @override
  String toString() {
    return { 'base': base, 'altura': altura, 'area': area, 'tipo': tipo }.toString();
  }
// devolvemos un map que se convierte a String.

}


main() {

  final figura = new Rectangulo(10, 10);

  print(figura);

}