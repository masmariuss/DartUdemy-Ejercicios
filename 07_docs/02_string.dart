

void main(List<String> args) {
  String nombre = 'Mario';
  String apellido = 'de la Torre';
  String nombreCompleto = '$nombre $apellido';

  print('String: $nombreCompleto');

  print('length: ${ nombreCompleto.length }');
  // La propiedad length nos dice cuántos carácteres tiene el String.
  // Los espacios también se cuentan como carácter.

  print('contains M: ${ nombreCompleto.contains('M') }');
  print('contains a[2]: ${ nombre.contains(('a'), 2) }');
  // El method contains nos retorna un true si contiene el carácter introducido (también con index). 
  // Key sensitive.
  // Los String son considerados una lista de carácteres, así que las posiciones empiezan desde el 0.
  print('endsWith e: ${ nombreCompleto.endsWith('e') }');
  print('endsWith o: ${ nombreCompleto.endsWith('o') }');

  print('padLeft: ${ nombreCompleto.padLeft(16, 'XX ')} '); // El width (=length) es 17, así que no se aplica
  print('padLeft: ${ nombreCompleto.padLeft(20, 'XX ')} '); // 20-17=3. Esta diferencia (3) es el número de veces que se repetirán los carácteres ('XX ') a la izquierda.
  print('padLeft: ${ nombreCompleto.padLeft(22, 'X ')} ');

  print('padRight: ${ nombreCompleto.padRight(22, ' X')} ');
}