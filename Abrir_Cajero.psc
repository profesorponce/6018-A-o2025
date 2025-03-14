Algoritmo Abrir_Cajero
	// Abrir Cajero v1.0
	// (c) Ingrese_su_nombre
	// sucorreo_electronico@gmail.com
	//
	// Programa de Práctica en clase (13.3.2025)
	
	// Bloque de definición de variables
	definir var_ejecutar_programa Como Logico
	definir var_contador_de_bucle Como Entero
	definir var_password_ingresado como caracter
	definir var_contraseña_correcta como caracter
	
	// Bloque de inicialización de variables
	var_ejecutar_programa = falso // puerta cerrada por defecto
	var_contador_de_bucle = 0     // se puede repetir el pedido de pass hasta 3 veces 
	var_password_ingresado =""
	var_contraseña_correcta = "12345"
	var_dumb = ""
	
	// Programa principal---------------------------------------
	// Primer Bloque: validacion de contraseña
	Repetir
		
		escribir "Intento numero: ", var_contador_de_bucle + 1
		escribir "Ingrese su contaseña, por favor."
		escribir "y luego presione ENTER"
		leer var_password_ingresado
		var_contador_de_bucle = var_contador_de_bucle + 1
		
		si var_password_ingresado = var_contraseña_correcta
			var_contador_de_bucle = 3
			var_ejecutar_programa = Verdadero
		SiNo
			limpiar pantalla
			escribir "La contraseña que ingresó es incorrecta"
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
