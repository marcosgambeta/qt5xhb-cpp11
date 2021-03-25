/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QLINEF
REQUEST QPAINTERPATH
REQUEST QPEN
REQUEST QRECTF
#endif

CLASS QGraphicsLineItem INHERIT QGraphicsItem

   METHOD new
   METHOD delete
   METHOD line
   METHOD pen
   METHOD setLine
   METHOD setPen
   METHOD boundingRect
   METHOD contains
   METHOD isObscuredBy
   METHOD opaqueArea
   METHOD paint
   METHOD shape
   METHOD type

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QGraphicsLineItem
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtWidgets/QGraphicsLineItem>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtWidgets/QGraphicsLineItem>
#endif

#include <QtGui/QPen>

/*
QGraphicsLineItem( QGraphicsItem * parent = nullptr )
*/
void QGraphicsLineItem_new1()
{
  auto obj = new QGraphicsLineItem( HB_ISNIL( 1 ) ? nullptr : static_cast< QGraphicsItem * >( Qt5xHb::itemGetPtr( 1 ) ) );
  Qt5xHb::returnNewObject( obj, true );
}

/*
QGraphicsLineItem( const QLineF & line, QGraphicsItem * parent = nullptr )
*/
void QGraphicsLineItem_new2()
{
  auto obj = new QGraphicsLineItem( *PQLINEF( 1 ), HB_ISNIL( 2 ) ? nullptr : static_cast< QGraphicsItem * >( Qt5xHb::itemGetPtr( 2 ) ) );
  Qt5xHb::returnNewObject( obj, true );
}

/*
QGraphicsLineItem( qreal x1, qreal y1, qreal x2, qreal y2, QGraphicsItem * parent = nullptr )
*/
void QGraphicsLineItem_new3()
{
  auto obj = new QGraphicsLineItem( PQREAL( 1 ), PQREAL( 2 ), PQREAL( 3 ), PQREAL( 4 ), HB_ISNIL( 5 ) ? nullptr : static_cast< QGraphicsItem * >( Qt5xHb::itemGetPtr( 5 ) ) );
  Qt5xHb::returnNewObject( obj, true );
}

HB_FUNC_STATIC( QGRAPHICSLINEITEM_NEW )
{
  if( ISBETWEEN( 0, 1 ) && ( ISQGRAPHICSITEM( 1 ) || HB_ISNIL( 1 ) ) )
  {
    QGraphicsLineItem_new1();
  }
  else if( ISBETWEEN( 1, 2 ) && ISQLINEF( 1 ) && ( ISQGRAPHICSITEM( 2 ) || HB_ISNIL( 2 ) ) )
  {
    QGraphicsLineItem_new2();
  }
  else if( ISBETWEEN( 4, 5 ) && HB_ISNUM( 1 ) && HB_ISNUM( 2 ) && HB_ISNUM( 3 ) && HB_ISNUM( 4 ) && ( ISQGRAPHICSITEM( 5 ) || HB_ISNIL( 5 ) ) )
  {
    QGraphicsLineItem_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QGRAPHICSLINEITEM_DELETE )
{
  auto obj = static_cast< QGraphicsLineItem * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
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
QLineF line() const
*/
HB_FUNC_STATIC( QGRAPHICSLINEITEM_LINE )
{
  auto obj = static_cast< QGraphicsLineItem * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      auto ptr = new QLineF( obj->line() );
      Qt5xHb::createReturnClass( ptr, "QLINEF", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QPen pen() const
*/
HB_FUNC_STATIC( QGRAPHICSLINEITEM_PEN )
{
  auto obj = static_cast< QGraphicsLineItem * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      auto ptr = new QPen( obj->pen() );
      Qt5xHb::createReturnClass( ptr, "QPEN", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setLine( const QLineF & line )
*/
void QGraphicsLineItem_setLine1()
{
  auto obj = static_cast< QGraphicsLineItem * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
    obj->setLine( *PQLINEF( 1 ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setLine( qreal x1, qreal y1, qreal x2, qreal y2 )
*/
void QGraphicsLineItem_setLine2()
{
  auto obj = static_cast< QGraphicsLineItem * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
    obj->setLine( PQREAL( 1 ), PQREAL( 2 ), PQREAL( 3 ), PQREAL( 4 ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( QGRAPHICSLINEITEM_SETLINE )
{
  if( ISNUMPAR( 1 ) && ISQLINEF( 1 ) )
  {
    QGraphicsLineItem_setLine1();
  }
  else if( ISNUMPAR( 4 ) && HB_ISNUM( 1 ) && HB_ISNUM( 2 ) && HB_ISNUM( 3 ) && HB_ISNUM( 4 ) )
  {
    QGraphicsLineItem_setLine2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setPen( const QPen & pen )
*/
HB_FUNC_STATIC( QGRAPHICSLINEITEM_SETPEN )
{
  auto obj = static_cast< QGraphicsLineItem * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISQPEN( 1 ) )
    {
#endif
      obj->setPen( *PQPEN( 1 ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual QRectF boundingRect() const
*/
HB_FUNC_STATIC( QGRAPHICSLINEITEM_BOUNDINGRECT )
{
  auto obj = static_cast< QGraphicsLineItem * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      auto ptr = new QRectF( obj->boundingRect() );
      Qt5xHb::createReturnClass( ptr, "QRECTF", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
virtual bool contains( const QPointF & point ) const
*/
HB_FUNC_STATIC( QGRAPHICSLINEITEM_CONTAINS )
{
  auto obj = static_cast< QGraphicsLineItem * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISQPOINTF( 1 ) )
    {
#endif
      RBOOL( obj->contains( *PQPOINTF( 1 ) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
virtual bool isObscuredBy( const QGraphicsItem * item ) const
*/
HB_FUNC_STATIC( QGRAPHICSLINEITEM_ISOBSCUREDBY )
{
  auto obj = static_cast< QGraphicsLineItem * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISQGRAPHICSITEM( 1 ) )
    {
#endif
      RBOOL( obj->isObscuredBy( PQGRAPHICSITEM( 1 ) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
virtual QPainterPath opaqueArea() const
*/
HB_FUNC_STATIC( QGRAPHICSLINEITEM_OPAQUEAREA )
{
  auto obj = static_cast< QGraphicsLineItem * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      auto ptr = new QPainterPath( obj->opaqueArea() );
      Qt5xHb::createReturnClass( ptr, "QPAINTERPATH", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
virtual void paint( QPainter * painter, const QStyleOptionGraphicsItem * option, QWidget * widget = nullptr )
*/
HB_FUNC_STATIC( QGRAPHICSLINEITEM_PAINT )
{
  auto obj = static_cast< QGraphicsLineItem * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN( 2, 3 ) && ISQPAINTER( 1 ) && ISQSTYLEOPTIONGRAPHICSITEM( 2 ) && ( ISQWIDGET( 3 ) || HB_ISNIL( 3 ) ) )
    {
#endif
      obj->paint( PQPAINTER( 1 ), PQSTYLEOPTIONGRAPHICSITEM( 2 ), OPQWIDGET( 3, nullptr ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual QPainterPath shape() const
*/
HB_FUNC_STATIC( QGRAPHICSLINEITEM_SHAPE )
{
  auto obj = static_cast< QGraphicsLineItem * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      auto ptr = new QPainterPath( obj->shape() );
      Qt5xHb::createReturnClass( ptr, "QPAINTERPATH", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
virtual int type() const
*/
HB_FUNC_STATIC( QGRAPHICSLINEITEM_TYPE )
{
  auto obj = static_cast< QGraphicsLineItem * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RINT( obj->type() );
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
