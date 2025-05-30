;---------------------------------------
; Programa0Archivo Secuencial Lectura
; (c) Ricardo Ponce
; https://profesorponce.blogspot.com/
;---------------------------------------
;
; Lectura de Datos desde Archivo Secuencial
; Programa de ejemplo para entender conceptos básicos
; para compilar use F5 o vaya al menu Compiler/Compile-Run

  Canal = 1
  Text$ = ""

   If ReadFile(Canal, "MiFichero.txt") 
     While Eof(Canal) = 0
       Text$ = Text$ + ReadString(Canal) +Chr(10)
     Wend
     CloseFile(Canal)    
     MessageRequester ("Datos leídos desde archivo:",Text$)
   Else
     MessageRequester ("Error","No se pudo leer")
   EndIf
   
; IDE Options = PureBasic 5.70 LTS (Windows - x64)
; CursorPosition = 18
; EnableXP