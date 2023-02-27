/** 
 *  Dado el siguiente código 
 *    Optimizarlo lo más posible usando funciones
 *    y todo lo visto en el curso
 * 
 *  Ver el primer ejemplo:
*/
import 'dart:io';

main() {

  // Ejemplo: 
  // Crear una función para imprimir STDOUTS en lugar de la siguiente línea. 
  // Luego todos los stdouts deberían ser llamados usando nuestra función personalizada

    // Aquí podemos hacer una función y así resumir y no tener código duplicado.
  
  procesarUsuario( 1500, 1 );
  procesarUsuario( 1800, 2 );

}


void imprimir( String texto ) => stdout.writeln(texto);

String leer() => stdin.readLineSync() ?? '';

void procesarUsuario( double salario, int i) {
    imprimir('=========== Usuario $i =============');

  imprimir('¿Cúal es su nombre?');
  String nombre = leer();

  imprimir('¿Qué edad tienes?');
  String edad = leer();
  
  imprimir('¿En qué país naciste?');
  String pais = leer();
  

  final Map<String, dynamic> usuario = {
    'nombre': nombre,
    'edad'  : edad,
    'pais'  : pais
  };

  imprimir('Usuario $i sin deducciones');

  // imprimir recibe un String como texto. 
  // Como usuario es un objeto, para que no nos de error, lo convertimos a String con el método toString().
  imprimir( usuario.toString() );

// Lo único que cambia entre usuario 1 y 2 es el salario (1500 vs 1800).
// salario vamos a pasárselo como argumento a procesarUsuario().
  
//  double salario     = 1500;
  double deducciones = salario * 0.15;
  double salarioNeto = salario - deducciones;

  usuario['salario']     = salario;
  usuario['deducciones'] = deducciones;
  usuario['salarioNeto'] = salarioNeto;

  imprimir(usuario.toString());

}