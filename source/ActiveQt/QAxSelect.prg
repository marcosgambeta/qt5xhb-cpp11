/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QAxSelect INHERIT QDialog

   METHOD new
   METHOD delete
   METHOD clsid
   METHOD sandboxingLevel

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAxSelect
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <ActiveQt/QAxSelect>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals3.h"

#ifdef __XHARBOUR__
#include <ActiveQt/QAxSelect>
#endif

/*
explicit QAxSelect(QWidget *parent = nullptr, Qt::WindowFlags flags = Qt::WindowFlags())
*/
HB_FUNC_STATIC( QAXSELECT_NEW )
{
  if( ISBETWEEN(0,2) && (ISQWIDGET(1)||ISNIL(1)) && ISOPTNUM(2) )
  {
    QAxSelect * o = new QAxSelect ( OPQWIDGET(1,nullptr), ISNIL(2)? (Qt::WindowFlags) Qt::WindowFlags() : (Qt::WindowFlags) hb_parni(2) );
    _qt5xhb_returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
~QAxSelect() override
*/
HB_FUNC_STATIC( QAXSELECT_DELETE )
{
  QAxSelect * obj = (QAxSelect *) _qt5xhb_itemGetPtrStackSelfItem();

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
QString clsid() const
*/
HB_FUNC_STATIC( QAXSELECT_CLSID )
{
  QAxSelect * obj = (QAxSelect *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->clsid () );
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
SandboxingLevel sandboxingLevel() const
*/
HB_FUNC_STATIC( QAXSELECT_SANDBOXINGLEVEL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,13,0))
  QAxSelect * obj = (QAxSelect *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->sandboxingLevel () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void onActiveXListCurrentChanged(const QModelIndex &) [private] [slot]
*/

/*
void onActiveXListActivated() [private] [slot]
*/

/*
void onFilterLineEditChanged(const QString &) [private] [slot]
*/

#pragma ENDDUMP