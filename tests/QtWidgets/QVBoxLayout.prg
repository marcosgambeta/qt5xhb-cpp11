/*

  Qt5xHb Project - Test Program

  Copyright (C) 2018 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/marcosgambeta/Qt5xHb

*/

#include "qt5xhb.ch"

PROCEDURE Main ()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oButton1
   LOCAL oButton2
   LOCAL oButton3
   LOCAL oButton4
   LOCAL oButton5
   LOCAL oLayout

   oApp := QApplication():new()

   oWindow := QWidget():new()

   oButton1 := QPushButton():new("Um")
   oButton2 := QPushButton():new("Dois")
   oButton3 := QPushButton():new("Tr�s")
   oButton4 := QPushButton():new("Quatro")
   oButton5 := QPushButton():new("Cinco")

   oLayout := QVBoxLayout():new()

   oLayout:addWidget(oButton1)
   oLayout:addWidget(oButton2)
   oLayout:addWidget(oButton3)
   oLayout:addWidget(oButton4)
   oLayout:addWidget(oButton5)

   oWindow:setLayout(oLayout)

   oWindow:show()

   oApp:exec()
   
   oWindow:delete()
   
   oApp:delete()

RETURN
