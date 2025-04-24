; Programa AbrirConsola
; (c) RicardoPonce
; https://https://profesorponce.blogspot.com/
;
; Programa de demostracion para uso de consola

OpenConsole("Operaciones en consola")

  ; cambie el comando PrintN por Print y vea las diferencias
  PrintN("Espere 3 segundos y el programa se cerrará solo.") 

  a$ = "José"
  b$ = "Alberto"
  c$ = a$ + " " + b$
  
  PrintN( c$ )   
  
  Delay(3000) ; espera de 3000 milisengundos (3 Segundos)
  
End

; IDE Options = PureBasic 6.02 LTS (Windows - x64)
; CursorPosition = 9
; EnableXP