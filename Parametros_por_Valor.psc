//  Paso de variables por VALOR
// (c) Ricardo Ponce
// https://profesorponce.blogspot.com/
// Version 2025
//
// -------------------------
// PASAR VARIABLES A FUNCIONES, SUBRUTINAS O 
// SUBALGORITMOS
// -------------------------
// 
// En programaci�n, la diferencia entre pasar un par�metro 
// por valor o por referencia radica en c�mo se manipulan 
// los datos en la memoria.
// 
// Paso por Valor
// 
//    Cuando se pasa un par�metro por valor, se crea una 
//    copia del valor original y se env�a a la funci�n, 
//    subrutina o subalgoritmo.
// 
//    Si la funci�n modifica el valor del par�metro, 
//    no afecta la variable original.
//    Se usa en lenguajes como C, Java (para tipos 
//    primitivos), Python (inmutables como enteros y cadenas).
// 
// 
//     |Ejemplo en C (paso por valor):
//     |
//     |// [modificar] es la funci�n o subrutina del programa principal
//     |void modificar(int x) {
//     |   x = 10;  // Se modifica solo la copia, no la variable original
//     |} //fin de la funci�n o subrutina
//     |
//     |
//     |// [main] es el algoritmo principal del programa
//     |int main() {
//     |   int num = 5;
//     |   modificar(num);
//     |    printf("%d", num);  // Imprime 5
//     |    return 0;
//     |} // fin algoritmo principal
// 
// Paso por Referencia
// 
//     Cuando se pasa un par�metro por referencia, la funci�n 
//     recibe la direcci�n de memoria del valor original, en 
//     lugar de una copia.
// 
//     Si la funci�n modifica el valor del par�metro, s� afecta 
//     la variable original.
//     Se usa en lenguajes como C++ (con referencias o punteros), 
//     Python (objetos mutables como listas y diccionarios), 
//     Java (para objetos y arreglos).
// 
//     |Ejemplo en C (paso por referencia):
//     |
//     |#include <stdio.h>
//     |
//     |// [modificar] es la funcion o subrutina
//     |void modificar(int *x) {
//     |    *x = 10;  // Se modifica el valor original
//     |} //fin de la funci�n o subrutina
//     |
//     |// [main] es el algoritmo principal del programa
//     |int main() {
//     |    int num = 5;
//     |    modificar(&num);
//     |    printf("%d", num);  // Imprime 10
//     |    return 0;
//     |} // fin algoritmo principal
// 
// 
// M�todo	            �Copia el valor?	�Modifica la variable original?
// ------------------- ----------------     ------------------------------ 
// Paso por Valor	       ? S�	                 ? No	
// Paso por Referencia	   ? No	                ? S� 
// 

Funcion Crea_Pantalla ( var_nombre Por valor )
	// en un llamado por VALOR la variable afectada NO SE MODIFICA
	escribir "Est�s en -> SubProceso FUNCION."
	escribir "Valor almacenado en var_nombre:",var_nombre
	var_nombre = "Jos�" //en llamada por VALOR NO SE MODIFICA la variable original
	escribir "var_nombre se modific� a:",var_nombre
FinFuncion

Algoritmo sin_titulo
	
	definir var_nombre Como Caracter
	var_nombre = "Francisco"
	
	limpiar pantalla 
	escribir "Paso de variables por REFERENCIA"
	escribir "------------------------------"
	escribir "Est�s en el Algoritmo principal."
	escribir "Valor almacenado en var_nombre:",var_nombre
	escribir "------------------------------"
	escribir "Ahora se llama la funci�n"
	Crea_Pantalla(var_nombre)
	escribir "------------------------------"
	escribir "Retornaste al algoritmo principal."
	escribir "El valor almacenado en var_nombre es:",var_nombre
	escribir "En llamada por VALOR NO SE MODIFICA la variable original"
	escribir "------------------------------"
	escribir "M�todo	            �Copia el valor?	�Modifica la variable original?"
    escribir "------------------- ----------------     ------------------------------ "
	escribir "Paso por Valor	       ? S�	                 ? No	"
	escribir "Paso por Referencia	   ? No	                ? S� "
	
FinAlgoritmo
