/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBRUSH
REQUEST QCOLOR
#endif

CLASS QScatterSeries INHERIT QXYSeries

   METHOD new
   METHOD delete
   METHOD color
   METHOD setColor
   METHOD borderColor
   METHOD setBorderColor
   METHOD markerShape
   METHOD setMarkerShape
   METHOD markerSize
   METHOD setMarkerSize
   METHOD brush
   METHOD setBrush
   METHOD type
   METHOD setPen

   METHOD onBorderColorChanged
   METHOD onColorChanged
   METHOD onMarkerShapeChanged
   METHOD onMarkerSizeChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QScatterSeries
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QScatterSeries>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals3.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QScatterSeries>
#endif
#endif

using namespace QtCharts;

/*
explicit QScatterSeries(QObject *parent = nullptr)
*/
HB_FUNC_STATIC( QSCATTERSERIES_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QScatterSeries * o = new QScatterSeries ( OPQOBJECT(1,nullptr) );
    _qt5xhb_returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
~QScatterSeries()
*/
HB_FUNC_STATIC( QSCATTERSERIES_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QScatterSeries * obj = (QScatterSeries *) _qt5xhb_itemGetPtrStackSelfItem();

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
#endif
}

/*
QColor color() const
*/
HB_FUNC_STATIC( QSCATTERSERIES_COLOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QScatterSeries * obj = (QScatterSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QColor * ptr = new QColor( obj->color () );
      _qt5xhb_createReturnClass ( ptr, "QCOLOR", true );
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
void setColor(const QColor &color)
*/
HB_FUNC_STATIC( QSCATTERSERIES_SETCOLOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QScatterSeries * obj = (QScatterSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && (ISQCOLOR(1)||ISCHAR(1)) )
    {
#endif
      obj->setColor ( ISOBJECT(1)? *(QColor *) _qt5xhb_itemGetPtr(1) : QColor(hb_parc(1)) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QColor borderColor() const
*/
HB_FUNC_STATIC( QSCATTERSERIES_BORDERCOLOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QScatterSeries * obj = (QScatterSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QColor * ptr = new QColor( obj->borderColor () );
      _qt5xhb_createReturnClass ( ptr, "QCOLOR", true );
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
void setBorderColor(const QColor &color)
*/
HB_FUNC_STATIC( QSCATTERSERIES_SETBORDERCOLOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QScatterSeries * obj = (QScatterSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && (ISQCOLOR(1)||ISCHAR(1)) )
    {
#endif
      obj->setBorderColor ( ISOBJECT(1)? *(QColor *) _qt5xhb_itemGetPtr(1) : QColor(hb_parc(1)) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
MarkerShape markerShape() const
*/
HB_FUNC_STATIC( QSCATTERSERIES_MARKERSHAPE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QScatterSeries * obj = (QScatterSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->markerShape () );
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
void setMarkerShape(MarkerShape shape)
*/
HB_FUNC_STATIC( QSCATTERSERIES_SETMARKERSHAPE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QScatterSeries * obj = (QScatterSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setMarkerShape ( (QScatterSeries::MarkerShape) hb_parni(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
qreal markerSize() const
*/
HB_FUNC_STATIC( QSCATTERSERIES_MARKERSIZE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QScatterSeries * obj = (QScatterSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->markerSize () );
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
void setMarkerSize(qreal size)
*/
HB_FUNC_STATIC( QSCATTERSERIES_SETMARKERSIZE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QScatterSeries * obj = (QScatterSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setMarkerSize ( PQREAL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QBrush brush() const
*/
HB_FUNC_STATIC( QSCATTERSERIES_BRUSH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QScatterSeries * obj = (QScatterSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QBrush * ptr = new QBrush( obj->brush () );
      _qt5xhb_createReturnClass ( ptr, "QBRUSH", true );
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
void setBrush(const QBrush &brush)
*/
HB_FUNC_STATIC( QSCATTERSERIES_SETBRUSH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QScatterSeries * obj = (QScatterSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQBRUSH(1) )
    {
#endif
      obj->setBrush ( *PQBRUSH(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QAbstractSeries::SeriesType type() const
*/
HB_FUNC_STATIC( QSCATTERSERIES_TYPE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QScatterSeries * obj = (QScatterSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->type () );
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
void setPen(const QPen &pen)
*/
HB_FUNC_STATIC( QSCATTERSERIES_SETPEN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QScatterSeries * obj = (QScatterSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQPEN(1) )
    {
#endif
      obj->setPen ( *PQPEN(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

using namespace QtCharts;

/*
void borderColorChanged( QColor color )
*/
HB_FUNC_STATIC( QSCATTERSERIES_ONBORDERCOLORCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QScatterSeries * sender = (QScatterSeries *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( sender != nullptr )
  {
    int index = sender->metaObject()->indexOfSignal("borderColorChanged(QColor)");

    if( hb_pcount() == 1 )
    {
      if( Signals3_connection( sender, index ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QScatterSeries::borderColorChanged, 
                                                              [sender,index]
                                                              (QColor arg1) {
          PHB_ITEM cb = Signals3_return_codeblock( sender, index );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals3_return_qobject ( (QObject *) sender, "QSCATTERSERIES" );
            PHB_ITEM pArg1 = Signals3_return_object( (void *) &arg1, "QCOLOR" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals3_store_connection( sender, index, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Signals3_disconnection( sender, index );

      QObject::disconnect( Signals3_get_connection( sender, index ) );

      hb_retl( true );
    }
    else
    {
      hb_retl( false );
    }
  }
  else
  {
    hb_retl( false );
  }
#endif
}

/*
void colorChanged( QColor color )
*/
HB_FUNC_STATIC( QSCATTERSERIES_ONCOLORCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QScatterSeries * sender = (QScatterSeries *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( sender != nullptr )
  {
    int index = sender->metaObject()->indexOfSignal("colorChanged(QColor)");

    if( hb_pcount() == 1 )
    {
      if( Signals3_connection( sender, index ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QScatterSeries::colorChanged, 
                                                              [sender,index]
                                                              (QColor arg1) {
          PHB_ITEM cb = Signals3_return_codeblock( sender, index );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals3_return_qobject ( (QObject *) sender, "QSCATTERSERIES" );
            PHB_ITEM pArg1 = Signals3_return_object( (void *) &arg1, "QCOLOR" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals3_store_connection( sender, index, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Signals3_disconnection( sender, index );

      QObject::disconnect( Signals3_get_connection( sender, index ) );

      hb_retl( true );
    }
    else
    {
      hb_retl( false );
    }
  }
  else
  {
    hb_retl( false );
  }
#endif
}

/*
void markerShapeChanged( QScatterSeries::MarkerShape shape )
*/
HB_FUNC_STATIC( QSCATTERSERIES_ONMARKERSHAPECHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QScatterSeries * sender = (QScatterSeries *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( sender != nullptr )
  {
    int index = sender->metaObject()->indexOfSignal("markerShapeChanged(QScatterSeries::MarkerShape)");

    if( hb_pcount() == 1 )
    {
      if( Signals3_connection( sender, index ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QScatterSeries::markerShapeChanged, 
                                                              [sender,index]
                                                              (QScatterSeries::MarkerShape arg1) {
          PHB_ITEM cb = Signals3_return_codeblock( sender, index );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals3_return_qobject ( (QObject *) sender, "QSCATTERSERIES" );
            PHB_ITEM pArg1 = hb_itemPutNI( NULL, (int) arg1 );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals3_store_connection( sender, index, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Signals3_disconnection( sender, index );

      QObject::disconnect( Signals3_get_connection( sender, index ) );

      hb_retl( true );
    }
    else
    {
      hb_retl( false );
    }
  }
  else
  {
    hb_retl( false );
  }
#endif
}

/*
void markerSizeChanged( qreal size )
*/
HB_FUNC_STATIC( QSCATTERSERIES_ONMARKERSIZECHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QScatterSeries * sender = (QScatterSeries *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( sender != nullptr )
  {
    int index = sender->metaObject()->indexOfSignal("markerSizeChanged(qreal)");

    if( hb_pcount() == 1 )
    {
      if( Signals3_connection( sender, index ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QScatterSeries::markerSizeChanged, 
                                                              [sender,index]
                                                              (qreal arg1) {
          PHB_ITEM cb = Signals3_return_codeblock( sender, index );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals3_return_qobject ( (QObject *) sender, "QSCATTERSERIES" );
            PHB_ITEM pArg1 = hb_itemPutND( NULL, arg1 );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals3_store_connection( sender, index, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Signals3_disconnection( sender, index );

      QObject::disconnect( Signals3_get_connection( sender, index ) );

      hb_retl( true );
    }
    else
    {
      hb_retl( false );
    }
  }
  else
  {
    hb_retl( false );
  }
#endif
}

#pragma ENDDUMP
