/**
 *   Un operador es un símbolo o conjunto de símbolos 
 *   que le dice al compilador que debe de realizar una tarea 
 *   matemática, relacional o lógica y debe de producir un resultado.
 */


main() {

  int a = 10 + 5;  //   +   15
  a = 20 - 10;     //   -   10
  a = 10 * 2;      //   *   20
  
  double b = 10 / 2;  //   /   5
  b = 10.0 % 3;       //   %   1  El sobrante de la división
  b = -b;             //   -expr  Es usado para cambiar el valor de la expresión

  int c = 10 ~/ 3;    //   ~/  3   División común y corriente (parte entera del producto de la división)
                      //   este carácter ~ se llama virgulilla


  int d = 1;

  d++;                //  ++   2
  d--;                //  --   1  
  
  d += 2;             //  +=   3
  d -= 2;             //  +=   1    
  d *= 2;             //  *=   2

  double f = 10;
  f /= 2;             //  /=   5
  

}