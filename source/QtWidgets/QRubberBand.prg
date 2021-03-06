/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QRubberBand INHERIT QWidget

   METHOD new
   METHOD delete
   METHOD move
   METHOD resize
   METHOD setGeometry
   METHOD shape

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QRubberBand
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtWidgets/QRubberBand>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#include <QtWidgets/QRubberBand>
#endif

/*
QRubberBand( QRubberBand::Shape s, QWidget * p = nullptr )
*/
HB_FUNC_STATIC( QRUBBERBAND_NEW )
{
  if( ISBETWEEN( 1, 2 ) && HB_ISNUM( 1 ) && ( ISQWIDGET( 2 ) || HB_ISNIL( 2 ) ) )
  {
    auto obj = new QRubberBand( static_cast<QRubberBand::Shape>( hb_parni( 1 ) ), OPQWIDGET( 2, nullptr ) );
    Qt5xHb::returnNewObject( obj, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QRUBBERBAND_DELETE )
{
  auto obj = qobject_cast< QRubberBand * >( Qt5xHb::getQObjectPointerFromSelfItem() );

  if( obj != nullptr )
  {
    Qt5xHb::Events_disconnect_all_events( obj, true );
    Qt5xHb::Signals_disconnect_all_signals( obj, true );
    delete obj;
    obj = nullptr;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( nullptr, nullptr );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void move( int x, int y )
*/
void QRubberBand_move1()
{
  auto obj = qobject_cast< QRubberBand * >( Qt5xHb::getQObjectPointerFromSelfItem() );

  if( obj != nullptr )
  {
    obj->move( PINT( 1 ), PINT( 2 ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void move( const QPoint & p )
*/
void QRubberBand_move2()
{
  auto obj = qobject_cast< QRubberBand * >( Qt5xHb::getQObjectPointerFromSelfItem() );

  if( obj != nullptr )
  {
    obj->move( *PQPOINT( 1 ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( QRUBBERBAND_MOVE )
{
  if( ISNUMPAR( 2 ) && HB_ISNUM( 1 ) && HB_ISNUM( 2 ) )
  {
    QRubberBand_move1();
  }
  else if( ISNUMPAR( 1 ) && ISQPOINT( 1 ) )
  {
    QRubberBand_move2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void resize( int width, int height )
*/
void QRubberBand_resize1()
{
  auto obj = qobject_cast< QRubberBand * >( Qt5xHb::getQObjectPointerFromSelfItem() );

  if( obj != nullptr )
  {
    obj->resize( PINT( 1 ), PINT( 2 ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void resize( const QSize & size )
*/
void QRubberBand_resize2()
{
  auto obj = qobject_cast< QRubberBand * >( Qt5xHb::getQObjectPointerFromSelfItem() );

  if( obj != nullptr )
  {
    obj->resize( *PQSIZE( 1 ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( QRUBBERBAND_RESIZE )
{
  if( ISNUMPAR( 2 ) && HB_ISNUM( 1 ) && HB_ISNUM( 2 ) )
  {
    QRubberBand_resize1();
  }
  else if( ISNUMPAR( 1 ) && ISQSIZE( 1 ) )
  {
    QRubberBand_resize2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setGeometry( const QRect & rect )
*/
void QRubberBand_setGeometry1()
{
  auto obj = qobject_cast< QRubberBand * >( Qt5xHb::getQObjectPointerFromSelfItem() );

  if( obj != nullptr )
  {
    obj->setGeometry( *PQRECT( 1 ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setGeometry( int x, int y, int width, int height )
*/
void QRubberBand_setGeometry2()
{
  auto obj = qobject_cast< QRubberBand * >( Qt5xHb::getQObjectPointerFromSelfItem() );

  if( obj != nullptr )
  {
    obj->setGeometry( PINT( 1 ), PINT( 2 ), PINT( 3 ), PINT( 4 ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( QRUBBERBAND_SETGEOMETRY )
{
  if( ISNUMPAR( 1 ) && ISQRECT( 1 ) )
  {
    QRubberBand_setGeometry1();
  }
  else if( ISNUMPAR( 4 ) && HB_ISNUM( 1 ) && HB_ISNUM( 2 ) && HB_ISNUM( 3 ) && HB_ISNUM( 4 ) )
  {
    QRubberBand_setGeometry2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QRubberBand::Shape shape() const
*/
HB_FUNC_STATIC( QRUBBERBAND_SHAPE )
{
  auto obj = qobject_cast< QRubberBand * >( Qt5xHb::getQObjectPointerFromSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RENUM( obj->shape() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

#pragma ENDDUMP
