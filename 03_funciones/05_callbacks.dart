

// Un callback no es más que una función que se llama dentro de otra función.


main() {
// El callback no es más que otro argumento, que por lo general se pone al final.
// Cuando una función no tiene nombre, se llama función anónima ( Map usuario ). Solo aparecen los parámetros.
  obtenerUsuario('100', ( Map usuario ) {
    // Esta parte de aquí sería el callback.
    print(usuario);
  });
}


void obtenerUsuario ( String id, Function callback ) {

  Map usuario = {
    'id'     : id,
    'nombre' : 'Ana María'
  };

  callback( usuario );

}

// Los callbacks no son muy usados en Dart, porque por lo general lo hacen mediante tareas asíncronas.
// Los callbacks nos permiten controlar el orden de la ejecución dependiendo de nuestras necesidades.