// Validar Correo Electrónico v1.0
//
// Crear un programa que a partir de una
// dirección de correo electrónico, puda
// encontrar el nombre del usuario
// y el nombre de dominio
// 
// ProfesorPonce
// clase del 15.4.2025
// https://profesorponce.blogspot.com/

Proceso ValidarCorreoElectronico
	
    definir var_cantidad_caracteres Como Entero
	definir var_correo_electronico Como Caracter
	definir var_contador_posicion como entero
	definir var_usuario Como Caracter
	definir var_dominio Como Caracter
	definir var_Encontre_la_Arroba Como Logico
	
	var_usuario =""
	var_dominio=""
	var_Encontre_la_Arroba = falso
	
	escribir "Ingresa un correo electronico (y Presione ENTER)"
	leer var_correo_electronico
	
	// 1 contar cantidad de caracteres
	var_cantidad_caracteres = longitud(var_correo_electronico)
	
	// 2 estructura Para 
	Para var_contador_posicion = 0 Hasta var_cantidad_caracteres Hacer
		
		si subcadena(var_correo_electronico,var_contador_posicion,var_contador_posicion)="@" Entonces
			var_Encontre_la_Arroba = Verdadero
		FinSi
		
		si var_Encontre_la_Arroba = falso Entonces
			var_usuario = var_usuario + subcadena(var_correo_electronico,var_contador_posicion,var_contador_posicion)
		FinSi
		
		si var_Encontre_la_Arroba = verdadero Entonces
			si subcadena(var_correo_electronico,var_contador_posicion,var_contador_posicion)="@" Entonces
				escribir " "
				escribir "¡se encontro la arroba!"
				escribir " "
			SiNo
				var_dominio = var_dominio + subcadena(var_correo_electronico,var_contador_posicion,var_contador_posicion)
			FinSi
		FinSi
		
	FinPara
	
	escribir "var_usuario = ",var_usuario
	escribir "var_dominio = ",var_dominio
	
FinProceso
