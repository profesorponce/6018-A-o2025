// Generar Número al Azar
//
// (c)Torino, Carolina Renee
//
// Clase 08.04.2025

Algoritmo adivinar_numero_MIENTRAS
	
	Definir var_azar Como Entero
	Definir var_adivinanza Como Entero
	Definir var_contador Como Entero
	
	var_azar = azar(9+1)
	var_contador = 0
	
	Mientras var_azar <> var_adivinanza y var_contador <= 2 Hacer 
		
		si var_contador > 0 Entonces
			Escribir "Número incorrecto, intente de nuevo"
			Esperar Tecla
		FinSi
		var_contador = var_contador + 1
		
		Escribir "Adivine el número, del 1 al 10"
		leer var_adivinanza
		
	FinMientras
	
	si var_azar = var_adivinanza
		Escribir "Acertó"
	SiNo
		Escribir "GAME OVER"
	finsi
	
	Escribir "El número ganador es: ",var_azar

FinAlgoritmo
