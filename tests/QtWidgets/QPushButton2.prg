/*

  Qt5xHb/C++11 Project - Test Program

  Copyright (C) 2021 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/magsoftinfo/qt5xhb-cpp11

*/

#include "qt5xhb.ch"

#ifdef __XHARBOUR__
REQUEST HB_GT_WIN
#endif

PROCEDURE Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oButton1
   LOCAL oButton2

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:resize( 320, 240 )

   oButton1 := QPushButton():new( "PushButton 1", oWindow )
   oButton1:move( 20, 20 )
   ? oButton1:onClicked( {||qout( "clicked-1" )} )
   ? oButton1:onPressed( {||qout( "pressed-1" )} )
   ? oButton1:onReleased( {||qout( "released-1" )} )

   oButton2 := QPushButton():new( "PushButton 2", oWindow )
   oButton2:move( 20, 70 )
   ? oButton2:onClicked( {||qout( "clicked-2" )} )
   ? oButton2:onPressed( {||qout( "pressed-2" )} )
   ? oButton2:onReleased( {||qout( "released-2" )} )

   oWindow:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN
