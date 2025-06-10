;---------------------------------------
; Programa Archivo Secuencial Sistemita (1)
; (c) Ricardo Ponce
; https://profesorponce.blogspot.com/
;---------------------------------------
;
; Programa PARCIAL - No Completado
;
; Esqueleto de Sistemita Completo con Archivos Secuenciales
; Programa de ejemplo para entender conceptos básicos
; para compilar use F5 o vaya al menu Compiler/Compile-Run


Enumeration
  #MainWindow
  #ETQdni
  #ETQapellido
  #ETQnombre
  #ETQtitulo
  #CTRLdni
  #CTRLapellido
  #CTRLnombres
  #CTRLlistview
  #MENU_MAIN
  #MENU_INGRESO
  #MENU_LECTURA
  #MENU_BUSCAR
  #BOTONGRABAR
EndEnumeration 

Canal = 34
ArchivoGrabacion$="Sistemita.txt"

  OpenWindow(#MainWindow, x, y, 600, 400, "", #PB_Window_SystemMenu)
  TextGadget(#ETQdni, 50, 70, 100, 25, "DNI")
  TextGadget(#ETQapellido, 50, 130, 100, 25, "Apellido")
  TextGadget(#ETQnombre, 50, 190, 100, 25, "Nombres")
  TextGadget(#ETQtitulo, 410, 10, 170, 30, "INGRESO")
  SetGadgetColor(#ETQtitulo, #PB_Gadget_FrontColor,RGB(0,0,255))
  StringGadget(#CTRLdni, 210, 70, 150, 25, "DNI")
  SetGadgetColor(#CTRLdni, #PB_Gadget_BackColor,RGB(192,192,192))
  StringGadget(#CTRLapellido, 210, 130, 300, 25, "apellido")
  SetGadgetColor(#CTRLapellido, #PB_Gadget_BackColor,RGB(192,192,192))
  StringGadget(#CTRLnombres, 210, 190, 310, 25, "nombres")
  SetGadgetColor(#CTRLnombres, #PB_Gadget_BackColor,RGB(192,192,192))
  ListViewGadget(#CTRLlistview, 50, 40, 480, 260)
  ButtonGadget(#BOTONGRABAR,420, 345, 100, 25,"Grabar")
  HideGadget(#CTRLlistview,1)
  
  CreateMenu(#MENU_MAIN, WindowID(#MainWindow))
         
  MenuTitle("Opciones")
  MenuItem(#MENU_INGRESO, "Ingreso")
  MenuItem(#MENU_LECTURA, "Lectura")
  MenuItem(#MENU_BUSCAR, "Buscar")
  
  Repeat
    Event.l = WaitWindowEvent()
    Select Event
      Case #PB_Event_Menu
 
        Select EventMenu()
          Case #MENU_INGRESO
            HideGadget(#CTRLlistview,1)
            
            HideGadget(#ETQdni,0)
            HideGadget(#ETQapellido,0)
            HideGadget(#ETQnombre,0)
            HideGadget(#CTRLdni,0)
            HideGadget(#CTRLapellido,0)
            HideGadget(#CTRLnombres,0)
            HideGadget(#BOTONGRABAR,0)
            
            SetGadgetText(#ETQtitulo,"INGRESO")
         
          Case #MENU_LECTURA
            HideGadget(#CTRLlistview,0)
            
            HideGadget(#ETQdni,1)
            HideGadget(#ETQapellido,1)
            HideGadget(#ETQnombre,1)
            HideGadget(#CTRLdni,1)
            HideGadget(#CTRLapellido,1)
            HideGadget(#CTRLnombres,1)
            HideGadget(#BOTONGRABAR,1)
            
            SetGadgetText(#ETQtitulo,"LECTURA")
            
            If ReadFile(Canal, ArchivoGrabacion$) 
               Position = 0
               While Eof(Canal) = 0
                 AddGadgetItem(#CTRLlistview, Position, ReadString(Canal))
                 Position = Position + 1
               Wend
               CloseFile(Canal)    
               MessageRequester ("Datos leídos","Lectura terminada", #PB_MessageRequester_Ok | #PB_MessageRequester_Info)
            Else
               MessageRequester ("Error","No se pudo leer el archivo", #PB_MessageRequester_Ok | #PB_MessageRequester_Error)
            EndIf
            
          Case #MENU_BUSCAR
            HideGadget(#CTRLlistview,1)
            
            HideGadget(#ETQdni,1)
            HideGadget(#ETQapellido,1)
            HideGadget(#ETQnombre,1)
            HideGadget(#CTRLdni,1)
            HideGadget(#CTRLapellido,1)
            HideGadget(#CTRLnombres,1) 
            HideGadget(#BOTONGRABAR,1)
            
            SetGadgetText(#ETQtitulo,"BUSCAR")
            
            Text$ = InputRequester(Title$, Message$, DefaultText$)
            
        EndSelect      
                  
      Case #PB_Event_Gadget
        Select EventGadget()
          Case #BOTONGRABAR
            
             ; rutina de verificacion de duplicados 
            
             Text$=GetGadgetText(#CTRLdni)+","+GetGadgetText(#CTRLapellido)+","+GetGadgetText(#CTRLnombres)
            
             If OpenFile(Canal, ArchivoGrabacion$)   ; crea o abre el fichero de datos
               FileSeek(Canal, Lof(Canal))                                          ; posicional al puntero de grabacion de datos al final
               WriteStringN(Canal,Text$)
               MessageRequester("Grabación","Se grabo correctamente",#PB_MessageRequester_Ok | #PB_MessageRequester_Info)
             Else
               MessageRequester("Grabación","No se pudo grabar",#PB_MessageRequester_Ok | #PB_MessageRequester_Error )
             EndIf
             CloseFile(Canal)           ; cierra el archivo
              
        EndSelect ;EventGadget
    EndSelect ;Event
              
  Until Event = #PB_Event_CloseWindow 
  
  
; IDE Options = PureBasic 5.70 LTS (Windows - x64)
; CursorPosition = 101
; FirstLine = 85
; EnableXP