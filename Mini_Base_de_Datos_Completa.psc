//  Mini Base de Datos
// (c) Ricardo Ponce
// https://profesorponce.blogspot.com/
// Version de la clase del 27-3-2025
//
// VERSION COMPLETA
//
// Programa Principal
Algoritmo Mini_Base_de_Datos
	
	// bloque de definiciones variables de la base de datos
	definir var_nombre Como Caracter
	definir var_apellido Como Caracter
	definir var_correo_electronico Como Caracter
	
	// variables temporales paraenviar a la funcion [ingreso_de_datos]
	definir var_tmp_nombre Como Caracter
	definir var_tmp_apellido Como Caracter
	definir var_tmp_correo_electronico Como Caracter
	
	// selección de menu en modo de visualizacioon de fichas
	definir var_seleccion_temp Como Caracter
	
	// variables auxiliares (¿que eligió el user? y puntero actual)
	definir var_seleccion_de_usuario como caracter
	definir var_posicion_actual Como Entero
	
	// dimensionamos a 6 elementos porque no usaremos el elemento (0)
	// en este caso, el lenguaje dimensiona 0,1,2,3,4,5
	// nuestro programa solo usará los elementos 1 al 5
	dimensionar var_nombre(6)
	dimensionar var_apellido(6)
	dimensionar var_correo_electronico(6)
	
	// inicialización de variables
	var_seleccion_de_usuario = ""
	var_posicion_actual = 1	//empezamos por la ficha 1
	
	// Bucle principal de ejecución
	repetir
		
		// pone las opciones del menu principal
		Pantalla_Principal(var_posicion_actual)
		// espera por la selección del usuario
		leer var_seleccion_de_usuario
		
		// elimina posibles errores y ajusta la opción del usuario
		var_seleccion_de_usuario =subcadena(var_seleccion_de_usuario,0,0)
		var_seleccion_de_usuario = mayusculas(var_seleccion_de_usuario)
		
		// ------------------------------------------------------------
		// OPCION A DEL MENU PRINCIPAL
		// el usuario selecciono la OPCION A - INGRESAR DATOS EN FICHAS
		// ------------------------------------------------------------
		si var_seleccion_de_usuario ="A"
			
			Ingreso_de_Datos(var_posicion_actual,var_tmp_nombre,var_tmp_apellido,var_tmp_correo_electronico) // ingresar datos
			
			// las variables var_tmp_nombre, var_tmp_apellido y var_tmp_correo_electronico
	        // traen desde la rutina de ingreso los datos ingresados por el usuario
 			// ahora debemos trasladar los datos de las variables temporales 
			// a las variables DIEMNSIONADAS de nuestra mini base de datos
			var_nombre(var_posicion_actual) = var_tmp_nombre
			var_apellido(var_posicion_actual) = var_tmp_apellido 
			var_correo_electronico(var_posicion_actual) = var_tmp_correo_electronico
			
			// ya trasladados los datos, ahora debemos "limpiar" las variables temporales
			var_tmp_nombre = ""
			var_tmp_apellido = ""
			var_tmp_correo_electronico = ""
			
			// tenemos que actualizar el puntero a una posición más hacia adelante
			var_posicion_actual = var_posicion_actual + 1
			
			// efecto circular o carrousel: si el puntero se pasa del valor permitido
			// maximo (en nuestro caso es 5) debe volver al primer elemento
			si var_posicion_actual >= 6 Entonces // evalúa ¿es igual o mayor a 6?
				var_posicion_actual = 1 //si lo es, lo retorna la valor 1
			FinSi
			
		FinSi
		
		// ------------------------------------------------------------
		// OPCION B DEL MENU PRINCIPAL
		// el usuario eligio la OPCION B - VISUALIZAR FICHAS
		// ------------------------------------------------------------
		si var_seleccion_de_usuario ="B"
						
			// Segundo bucle de repetición para ejecutar la pcion
			// de visualización
			repetir
				
			    Limpiar Pantalla
			    escribir "Visualizando ficha:",var_posicion_actual
			    escribir " "
			    Escribir "Nombre:",var_nombre(var_posicion_actual)
			    Escribir "Apellido:",var_apellido(var_posicion_actual)
			    Escribir "Correo-e:",var_correo_electronico(var_posicion_actual)
			    escribir " "
			    Escribir "a: atras / d: adelante / e: exit -salir"
			    leer var_seleccion_temp
         		var_seleccion_temp =subcadena(var_seleccion_temp,0,0) // tompa primer caracter
		        var_seleccion_temp = minusculas(var_seleccion_temp) // lo lleva a minusculas 
			
			    // ir hacia adelante
				si var_seleccion_temp = "d" Entonces
				   var_posicion_actual = var_posicion_actual + 1
				   si var_posicion_actual >= 6 Entonces
				    	var_posicion_actual = 1
				    FinSi
			    FinSi
				
				// ir hacia atras
			    si var_seleccion_temp = "a" Entonces
				    var_posicion_actual = var_posicion_actual - 1
				    si var_posicion_actual < 1 Entonces
					    var_posicion_actual = 5
				    FinSi
			    FinSi
				
			hasta que var_seleccion_temp = "e" // salir de visualizacion
			
			// retorna al bucle principal de ejecución
			
		FinSi
		
	// evalúa si el usuario desea salir y terminar el programa	
	Hasta Que var_seleccion_de_usuario = "X"
	// salida del bucle principal de ejecución
	
	// el programa llega aca cuando el usuario sale del programa
	Limpiar Pantalla
	escribir "Salio del programa"
	
FinAlgoritmo

// ----------------------------------------
// Menu inicial - solo presenta las opciones - no es interactivo
SubProceso Pantalla_Principal(var_posicion_actual Por Valor)
	
	limpiar Pantalla
	Escribir "Ficha actual:",var_posicion_actual
	escribir " "
	escribir "A-Ingreso de datos en fichas"
	escribir "B-Consulta de fichas ingresadas"
	escribir "X-Salir del programa"
	escribir " "
	escribir "(elija una opcion y presion ENTER)"
	
FinSubProceso

// ----------------------------------------
// rutina de ingreso de datos para la ficha a la que apunta el PUNTERO var_posicion_actual
Funcion Ingreso_de_Datos (var_posicion_actual Por Valor, var_tmp_nombre Por Referencia,var_tmp_apellido Por Referencia, var_tmp_correo_electronico Por Referencia)
	
	// esta rutina usa las variables
	// var_tmp_nombre, var_tmp_apellido y var_tmp_correo_electronico
	// para capturar los datos de ingreso del usuario
	
	Limpiar Pantalla
	// avisa la ficha que se está ingresando / modificando
	escribir "Esta ingresando la ficha: ",var_posicion_actual
	// avisa que estamos en la rutina de ingreso 
	escribir "Pantalla ingreso de Datos"
	
	// pide el nombre
	escribir "Ingrese el nombre (y presione ENTER)"
	leer var_tmp_nombre
	// pide el apellido
	escribir "Ahora ingrese el apellido (y presione ENTER)"
	leer var_tmp_apellido
	// pide el correo-e
	escribir "Finalmente ingrese el correo electronico (y presione ENTER)"
	leer var_tmp_correo_electronico
	
	// termino el ingreso retorna directamente al bucle principal
	// en el algoritmo principal
	// los datos ingresados están preservados en las variables
	// var_tmp_nombre, var_tmp_apellido y var_tmp_correo_electronico
	
FinFuncion
	