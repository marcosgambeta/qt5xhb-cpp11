/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QHBoxLayout INHERIT QBoxLayout

   METHOD new
   METHOD delete

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QHBoxLayout
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QHBoxLayout>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QHBoxLayout>
#endif

/*
QHBoxLayout ()
*/
void QHBoxLayout_new1 ()
{
  QHBoxLayout * o = new QHBoxLayout ();
  _qt5xhb_returnNewObject( o, false );
}

/*
QHBoxLayout ( QWidget * parent )
*/
void QHBoxLayout_new2 ()
{
  QHBoxLayout * o = new QHBoxLayout ( PQWIDGET(1) );
  _qt5xhb_returnNewObject( o, false );
}

//[1]QHBoxLayout ()
//[2]QHBoxLayout ( QWidget * parent )

HB_FUNC_STATIC( QHBOXLAYOUT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QHBoxLayout_new1();
  }
  else if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    QHBoxLayout_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QHBOXLAYOUT_DELETE )
{
  QHBoxLayout * obj = (QHBoxLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
