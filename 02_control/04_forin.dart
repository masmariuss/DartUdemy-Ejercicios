

main() {

  List<String> listado = ['Batman', 'Superman', 'Wonder Woman'];

  // for (int i = 0; i < listado.length; i++) {
  //   print( listado[i] );
  // }


  // Con la instrucción for in recorro el listado y en cada una de las vueltas o iteraciones del mismo, extraigo la variable u objeto que se encuentre dentro del listado.
  // Con String nombre tenemos la extracción de un elemento dentro (in) de un List (listado).
  for (String nombre in listado) {
    print(nombre);
  }


}