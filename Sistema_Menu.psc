Algoritmo Sistema_de_Menu
	
	// Sistema de Menu
	// (c) Ricardo Ponce (Reemplace esto por su nombre)
	// 1Calse del 8 de Marzo 2025
	//
	// Este programa muestra como funciona un programa recursivo
	// que present un menu de opciones para el usuario
	// Se aplican funciones Strings$ para depurar errores de
	// entrada. La opciones disponibles para cada selección
	//de menu se implementan en bloques SI-FINSI abreviados
	
	// bloque de definición de variables
	definir var_nombre Como Caracter
	definir var_apellido Como Caracter
	definir var_correoe Como Caracter
	
	definir var_seleccion_de_usuario Como Caracter
	
	// bloque de inicialización de variables
	var_nombre = ""					// variable auxiliar
	var_apellido = ""				// variable auxiliar
	var_correoe = ""				// variable auxiliar
	var_seleccion_de_usuario  = ""	// guarda la selección del usuario
	
	// bloque recursivo del programa
	Repetir
		
		// pantalla para usuario
		Limpiar Pantalla
		Escribir "A-Ingresar nombre"
		Escribir "B-Ingresar apellido"
		Escribir "C-Ingresar correo-e"
		Escribir "X-Salir del sistema"
		Escribir " " // se deja una linea vacia para mejorar la lectura y atención del ususuario
		
		// ingreso de la seleccion de usuario
		Escribir "Elija una letra del menu de selección y prEsione ENTER"
		leer var_seleccion_de_usuario
		
		// se valida el ingreso evitando errores del usuario
		var_seleccion_de_usuario = subcadena(var_seleccion_de_usuario,1,1) // se toma la primer letra elegida
		
		// CUIDADO: 
		// dependiendo de como este configurado su IDE PSEINT, la función subcadena requiere de parametro 1,1 o 0,0
		
		// subcadena(var_seleccion_de_usuario,1,1)
		// subcadena(var_seleccion_de_usuario,0,0)
		
		// si en Configurar/ Opciones del Lenguaje (perfiles) / Personalizar
		//  la opcione [Utilizar indices en arreglos y cadenas en base 0] está MARCADA, deberá usar (0,0)
		//  la opcione [Utilizar indices en arreglos y cadenas en base 0] está DESMARCADA, deberá usar (1,1)
				
		var_seleccion_de_usuario = mayusculas(var_seleccion_de_usuario) //se toma la selección y se lleva a mayusculas
		
		Limpiar Pantalla
				
		si var_seleccion_de_usuario ="A"
			// el usuario eligió ingresar un nombre
			escribir "Ingrese su nombre y presione ENTER"
			leer var_nombre
		FinSi
		
		si var_seleccion_de_usuario ="B"
			// el usuario eligió ingresar un apellido
			escribir "Ingrese su apellido y presione ENTER"
			leer var_apellido		
		FinSi
		
		si var_seleccion_de_usuario ="C"
			// el usuario eligió ingresar un correo electrónico
			escribir "Ingrese su correo electronico y presione ENTER"
			leer var_correoe
		FinSi
		
		si var_seleccion_de_usuario ="X"
			// el usuario elige salir y aqui definimos la condición necesaria
			// para que el bucle de repetición principal termine su ejecución
			var_seleccion_de_usuario = minusculas (var_seleccion_de_usuario)
		FinSi
		
		escribir "Presione una tecla para continuar."
		Esperar Tecla
		
	Hasta Que var_seleccion_de_usuario = "x"
	
	// cuando el usuario SALE del programa se muestran los datos ingresados
	
	Limpiar Pantalla
	escribir "Nombre:", var_nombre,"."
	escribir "Apellido:", var_apellido,"." 
	escribir "Correo-e:", var_correoe,"." 
	escribir " "
	escribir "Usted salió del programa."
	
FinAlgoritmo
