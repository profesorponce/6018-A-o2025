; Programa Escenario y Control Basico
; (c) RicardoPonce
; https://https://profesorponce.blogspot.com/
;
; Programa de demostracion para uso de consola
; Con las teclas de cursor DERECHA e IZQUIERDA
; ARRIBA y ABAJO y puntos intermedios
; que permiten mover un caracter 
; en pantalla
; El programa tiene un procedimiento para
; elrefresco y dibujo de la pantalla del
; Juego.
; El main principal detecta las teclas
; presionadas para actualizar la pantalla


If OpenConsole()
   
  ConsoleTitle("Control Básico de Movimiento en Consola v1.0")
  ClearConsole()
  PrintN("Para SALIR presione la tecla ESC (escape)")
    
  Repeat
      
    KeyPressed$ = Inkey()
      
    Select RawKey()
        
      Case 0
        ; dumb code            
      Default
        PrintN("Seleccionó TECLA:" + Str(RawKey()))
            
    EndSelect    
          
  Until RawKey() = 27 ; Espera hasta que el usuario presione escape
    
  ClearConsole()
  PrintN("Seleccionó SALIR. Espere 3 segundos y se cerrará la consola.")
  Delay(3000) ; espera de 3000 milisengundos (3 Segundos)
    
EndIf


; IDE Options = PureBasic 5.70 LTS (Windows - x64)
; CursorPosition = 26
; FirstLine = 14
; EnableXP