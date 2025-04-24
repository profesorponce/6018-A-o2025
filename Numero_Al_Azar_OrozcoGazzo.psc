// Generar Número al Azar
//
// (c)OROZCO GAZZO, EMMANUEL RICARDO
//
// Clase 08.04.2025

Algoritmo Adivinar_Numero
	
	Definir Num_Adivinar ,N_U  Como Entero
	Definir x Como Entero
	Definir Adivino Como Logico
	
	var_contador = 0;
	
	Adivino = Falso
	Num_Adivinar=azar(9)+1
	Mostrar Num_Adivinar
	Mientras x <3 Hacer
		x=x+1;
		Mostrar " Adivine el Numero "
		Leer N_U
		si Num_Adivinar = N_U
			Adivino = Verdadero;
			x=3
		FinSi
	FinMientras
	Mostrar " Se adivino el Numero =" Adivino
	Mostrar " el Numero era " Num_Adivinar
	
FinAlgoritmo
