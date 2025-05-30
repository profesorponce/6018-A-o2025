;---------------------------------------
; Programa0Archivo Secuencial Grabación
; (c) Ricardo Ponce
; https://profesorponce.blogspot.com/
;---------------------------------------
;
; Grabación de archivos secuenciales
; Programa de ejemplo para entender conceptos básicos
; para compilar use F5 o vaya al menu Compiler/Compile-Run

Repeat
  
  Canal = 1
  Text$ = InputRequester("Datos", "Ingresa el dato a grabar (exit para salir)", "")
  
  If OpenFile(Canal, "MiFichero.txt")   ; crea o abre el fichero de datos
    FileSeek(Canal, Lof(Canal))             ; posicional al puntero de grabacion de datos al final
    If text$ <>"exit"
       WriteStringN(Canal,Text$)        ; graba el string y le agrega caracter "fin de linea"
    EndIf
    CloseFile(Canal)                    ; cierra el archivo
  EndIf
  
Until text$ = "exit"


; IDE Options = PureBasic 5.70 LTS (Windows - x64)
; CursorPosition = 13
; EnableXP