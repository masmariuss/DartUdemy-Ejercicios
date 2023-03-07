
// Las clases abstractas solo sirven como cascarones de otras, o para heredar sus funciones y métodos a otras.
// Dicho de otra manera, las clases abstractas solo sirven para dar sus métodos y propiedades a otras. 
// No se pueden crear nuevas instancias de una clase abstracta.



abstract class Vehiculo {

  bool encedido = false;

  void encender() {
    encedido = true;
    print('Vehículo encendido');
  }

  void apagar() {
    encedido = false;
    print('Vehículo apagado');
  }

  bool revisarMotor();
// Otro beneficio de las clases abstractas es que no es necesario definir qué es lo que va a hacer el método.
// Es decir, podemos indicar que esta clase va a tener un nuevo método, y queda a discreción de la otra clase la implementación del mismo.

}

class Carro extends Vehiculo {

    int kilometraje = 0;
    
      @override // Con @override estamos sobre escribiendo un método del padre (Vehiculo es padre de Carro).
      bool revisarMotor() {
        print('Motor OK!');
        return true;
      }

}



main() {

  // final ford = new Vehiculo(); Error -> Las clases abstractas no pueden ser instanciadas.
  final ford = new Carro();

  ford.encender();
  ford.apagar();

  ford.revisarMotor();

}