// Generar Número al Azar
//
// (c)DUCA FORNES, PEDRO TOMAS
//
// Clase 08.04.2025

Algoritmo numeroalazar
	
	Definir var_numero_alazar Como entero
	Definir var_seleccion_usuario Como entero
	Definir var_contador Como Entero
	var_contador = 0
	
Mientras var_contador < 3 Hacer
	
	Repetir
		
		Escribir "Seleccione un numero del 1 al 10"
		Repetir
			var_numero_alazar = azar(11)
		Hasta Que var_numero_alazar <> 0
		Leer var_seleccion_usuario 
		Escribir "valor al azar: ", var_numero_alazar
		
		si var_seleccion_usuario <> var_numero_alazar Entonces
			var_contador = var_contador + 1
		FinSi

		si var_seleccion_usuario = var_numero_alazar Entonces
			Escribir "Adivinaste el numero felicidades"
			var_contador = 3
		SiNo
			Escribir "No le pegaste al numero"
		FinSi
	Hasta Que var_contador >= 3 
	
FinMientras

	
FinAlgoritmo
