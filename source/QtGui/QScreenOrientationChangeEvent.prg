/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSCREEN
#endif

CLASS QScreenOrientationChangeEvent INHERIT QEvent

   METHOD new
   METHOD delete
   METHOD screen
   METHOD orientation

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QScreenOrientationChangeEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtGui/QScreenOrientationChangeEvent>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals3.h"

#ifdef __XHARBOUR__
#include <QtGui/QScreenOrientationChangeEvent>
#endif

#include <QtGui/QScreen>

/*
QScreenOrientationChangeEvent(QScreen *screen, Qt::ScreenOrientation orientation)
*/
HB_FUNC_STATIC( QSCREENORIENTATIONCHANGEEVENT_NEW )
{
  if( ISNUMPAR(2) && ISQSCREEN(1) && ISNUM(2) )
  {
    QScreenOrientationChangeEvent * o = new QScreenOrientationChangeEvent ( PQSCREEN(1), (Qt::ScreenOrientation) hb_parni(2) );
    _qt5xhb_returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QSCREENORIENTATIONCHANGEEVENT_DELETE )
{
  QScreenOrientationChangeEvent * obj = (QScreenOrientationChangeEvent *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    delete obj;
    obj = nullptr;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QScreen *screen() const
*/
HB_FUNC_STATIC( QSCREENORIENTATIONCHANGEEVENT_SCREEN )
{
  QScreenOrientationChangeEvent * obj = (QScreenOrientationChangeEvent *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QScreen * ptr = obj->screen ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QSCREEN" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
Qt::ScreenOrientation orientation() const
*/
HB_FUNC_STATIC( QSCREENORIENTATIONCHANGEEVENT_ORIENTATION )
{
  QScreenOrientationChangeEvent * obj = (QScreenOrientationChangeEvent *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->orientation () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

#pragma ENDDUMP
