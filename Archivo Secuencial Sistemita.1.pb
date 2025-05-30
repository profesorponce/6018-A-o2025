;---------------------------------------
; Programa Archivo Secuencial Sistemita (1)
; (c) Ricardo Ponce
; https://profesorponce.blogspot.com/
;---------------------------------------
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
  #MENU_ARCHIVO_INGRESO
  #MENU_ARCHIVO_LECTURA
  #MENU_ARCHIVO_BUSCAR
EndEnumeration  

  OpenWindow(#MainWindow, x, y, 600, 400, "", #PB_Window_SystemMenu)
  TextGadget(#ETQdni, 50, 70, 100, 25, "DNI")
  TextGadget(#ETQapellido, 50, 130, 100, 25, "Apellido")
  TextGadget(#ETQnombre, 50, 190, 100, 25, "Nombres")
  TextGadget(#ETQtitulo, 410, 10, 170, 30, "Ingreso", #PB_Text_Center | #PB_Text_Right)
  SetGadgetColor(#ETQtitulo, #PB_Gadget_FrontColor,RGB(0,0,255))
  StringGadget(#CTRLdni, 210, 70, 150, 25, "DNI")
  SetGadgetColor(#CTRLdni, #PB_Gadget_BackColor,RGB(192,192,192))
  StringGadget(#CTRLapellido, 210, 130, 300, 25, "apellido")
  SetGadgetColor(#CTRLapellido, #PB_Gadget_BackColor,RGB(192,192,192))
  StringGadget(#CTRLnombres, 210, 190, 310, 25, "nombres")
  SetGadgetColor(#CTRLnombres, #PB_Gadget_BackColor,RGB(192,192,192))
  ListViewGadget(#CTRLlistview, 50, 40, 480, 260)
  HideGadget(#CTRLlistview,1)
  
  CreateMenu(#MENU_MAIN, WindowID(#MainWindow))
         
  MenuTitle("Menú Principal")
  MenuItem(#MENU_ARCHIVO_INGRESO, "Ingreso de Registros")
  MenuItem(#MENU_ARCHIVO_LECTURA, "Lectura de Registros")
  MenuItem(#MENU_ARCHIVO_BUSCAR, "Buscar un Registro")
  
  Repeat
    Event.l = WaitWindowEvent()
    Select Event
      Case #PB_Event_Menu ;eventos de menu
 
        Select EventMenu()
          Case #MENU_ARCHIVO_INGRESO
            MessageRequester("#MENU", "Ingreso de Registros")
          Case #MENU_ARCHIVO_LECTURA
            MessageRequester("#MENU", "Lectura de Registros") 
          Case #MENU_ARCHIVO_BUSCAR
            MessageRequester("#MENU", "Buscar un Registro")   
        EndSelect      
                  
      Case #PB_Event_Gadget ;evento de gadgets
        Select EventGadget()
          
        EndSelect ;EventGadget
        
    EndSelect ;Event
              
  Until Event = #PB_Event_CloseWindow 
  
  
; IDE Options = PureBasic 5.70 LTS (Windows - x64)
; CursorPosition = 64
; EnableXP