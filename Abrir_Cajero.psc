Algoritmo Abrir_Cajero
	// Abrir Cajero v1.0
	// (c) Ingrese_su_nombre
	// sucorreo_electronico@gmail.com
	//
	// Programa de Pr�ctica en clase (13.3.2025)
	
	// Bloque de definici�n de variables
	definir var_ejecutar_programa Como Logico
	definir var_contador_de_bucle Como Entero
	definir var_password_ingresado como caracter
	definir var_contrase�a_correcta como caracter
	
	// Bloque de inicializaci�n de variables
	var_ejecutar_programa = falso // puerta cerrada por defecto
	var_contador_de_bucle = 0     // se puede repetir el pedido de pass hasta 3 veces 
	var_password_ingresado =""
	var_contrase�a_correcta = "12345"
	var_dumb = ""
	
	// Programa principal---------------------------------------
	// Primer Bloque: validacion de contrase�a
	Repetir
		
		escribir "Intento numero: ", var_contador_de_bucle + 1
		escribir "Ingrese su contase�a, por favor."
		escribir "y luego presione ENTER"
		leer var_password_ingresado
		var_contador_de_bucle = var_contador_de_bucle + 1
		
		si var_password_ingresado = var_contrase�a_correcta
			var_contador_de_bucle = 3
			var_ejecutar_programa = Verdadero
		SiNo
			limpiar pantalla
			escribir "La contrase�a que ingres� es incorrecta"
			escribir "Presione cualquier tecla para continuar"
			esperar tecla
			limpiar pantalla
		FinSi
		
	Hasta Que var_contador_de_bucle = 3
	
	
	// ejecucion de las rutinas del banco
	limpiar pantalla
	si var_ejecutar_programa = Verdadero 
		
		escribir "Usted entro al sistema bancario."
    	escribir "Presione cualquier tecla para terminar el programa"
		esperar tecla
		
	FinSi
	// fin programa principal-------------------------------------
	
	
FinAlgoritmo
