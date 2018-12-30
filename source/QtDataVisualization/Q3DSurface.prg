/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSURFACE3DSERIES
REQUEST QVALUE3DAXIS
#endif

CLASS Q3DSurface INHERIT QAbstract3DGraph

   METHOD new
   METHOD delete
   METHOD axisX
   METHOD setAxisX
   METHOD axisY
   METHOD setAxisY
   METHOD axisZ
   METHOD setAxisZ
   METHOD selectedSeries
   METHOD flipHorizontalGrid
   METHOD setFlipHorizontalGrid
   METHOD addSeries
   METHOD removeSeries
   METHOD seriesList
   METHOD addAxis
   METHOD releaseAxis
   METHOD axes

   METHOD onAxisXChanged
   METHOD onAxisYChanged
   METHOD onAxisZChanged
   METHOD onFlipHorizontalGridChanged
   METHOD onSelectedSeriesChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS Q3DSurface
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <Q3DSurface>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals2.h"

#ifdef __XHARBOUR__
#include <Q3DSurface>
#endif

using namespace QtDataVisualization;

/*
explicit Q3DSurface(const QSurfaceFormat *format = Q_NULLPTR, QWindow *parent = Q_NULLPTR)
*/
HB_FUNC_STATIC( Q3DSURFACE_NEW )
{
  if( ISBETWEEN(0,2) && (ISQSURFACEFORMAT(1)||ISNIL(1)) && (ISQWINDOW(2)||ISNIL(2)) )
  {
    Q3DSurface * o = new Q3DSurface ( ISNIL(1)? Q_NULLPTR : (QSurfaceFormat *) _qt5xhb_itemGetPtr(1), OPQWINDOW(2,Q_NULLPTR) );
    _qt5xhb_returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
virtual ~Q3DSurface()
*/
HB_FUNC_STATIC( Q3DSURFACE_DELETE )
{
  Q3DSurface * obj = (Q3DSurface *) _qt5xhb_itemGetPtrStackSelfItem();

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

/*
QValue3DAxis *axisX() const
*/
HB_FUNC_STATIC( Q3DSURFACE_AXISX )
{
  Q3DSurface * obj = (Q3DSurface *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QValue3DAxis * ptr = obj->axisX ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QVALUE3DAXIS" );
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
void setAxisX(QValue3DAxis *axis)
*/
HB_FUNC_STATIC( Q3DSURFACE_SETAXISX )
{
  Q3DSurface * obj = (Q3DSurface *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQVALUE3DAXIS(1) )
    {
#endif
      obj->setAxisX ( PQVALUE3DAXIS(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QValue3DAxis *axisY() const
*/
HB_FUNC_STATIC( Q3DSURFACE_AXISY )
{
  Q3DSurface * obj = (Q3DSurface *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QValue3DAxis * ptr = obj->axisY ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QVALUE3DAXIS" );
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
void setAxisY(QValue3DAxis *axis)
*/
HB_FUNC_STATIC( Q3DSURFACE_SETAXISY )
{
  Q3DSurface * obj = (Q3DSurface *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQVALUE3DAXIS(1) )
    {
#endif
      obj->setAxisY ( PQVALUE3DAXIS(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QValue3DAxis *axisZ() const
*/
HB_FUNC_STATIC( Q3DSURFACE_AXISZ )
{
  Q3DSurface * obj = (Q3DSurface *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QValue3DAxis * ptr = obj->axisZ ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QVALUE3DAXIS" );
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
void setAxisZ(QValue3DAxis *axis)
*/
HB_FUNC_STATIC( Q3DSURFACE_SETAXISZ )
{
  Q3DSurface * obj = (Q3DSurface *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQVALUE3DAXIS(1) )
    {
#endif
      obj->setAxisZ ( PQVALUE3DAXIS(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QSurface3DSeries *selectedSeries() const
*/
HB_FUNC_STATIC( Q3DSURFACE_SELECTEDSERIES )
{
  Q3DSurface * obj = (Q3DSurface *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QSurface3DSeries * ptr = obj->selectedSeries ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QSURFACE3DSERIES" );
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
bool flipHorizontalGrid() const
*/
HB_FUNC_STATIC( Q3DSURFACE_FLIPHORIZONTALGRID )
{
  Q3DSurface * obj = (Q3DSurface *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->flipHorizontalGrid () );
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
void setFlipHorizontalGrid(bool flip)
*/
HB_FUNC_STATIC( Q3DSURFACE_SETFLIPHORIZONTALGRID )
{
  Q3DSurface * obj = (Q3DSurface *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setFlipHorizontalGrid ( PBOOL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void addSeries(QSurface3DSeries *series)
*/
HB_FUNC_STATIC( Q3DSURFACE_ADDSERIES )
{
  Q3DSurface * obj = (Q3DSurface *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQSURFACE3DSERIES(1) )
    {
#endif
      obj->addSeries ( PQSURFACE3DSERIES(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void removeSeries(QSurface3DSeries *series)
*/
HB_FUNC_STATIC( Q3DSURFACE_REMOVESERIES )
{
  Q3DSurface * obj = (Q3DSurface *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQSURFACE3DSERIES(1) )
    {
#endif
      obj->removeSeries ( PQSURFACE3DSERIES(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QList<QSurface3DSeries *> seriesList() const
*/
HB_FUNC_STATIC( Q3DSURFACE_SERIESLIST )
{
  Q3DSurface * obj = (Q3DSurface *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QList<QSurface3DSeries *> list = obj->seriesList ();
      PHB_DYNS pDynSym = hb_dynsymFindName( "QSURFACE3DSERIES" );
      PHB_ITEM pArray = hb_itemArrayNew(0);
      int i;
      for(i=0;i<list.count();i++)
      {
        if( pDynSym )
        {
          hb_vmPushDynSym( pDynSym );
          hb_vmPushNil();
          hb_vmDo( 0 );
          PHB_ITEM pObject = hb_itemNew( NULL );
          hb_itemCopy( pObject, hb_stackReturnItem() );
          PHB_ITEM pItem = hb_itemNew( NULL );
          hb_itemPutPtr( pItem, (QSurface3DSeries *) list[i] );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
        else
        {
          hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QSURFACE3DSERIES", HB_ERR_ARGS_BASEPARAMS );
        }
      }
      hb_itemReturnRelease(pArray);
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
void addAxis(QValue3DAxis *axis)
*/
HB_FUNC_STATIC( Q3DSURFACE_ADDAXIS )
{
  Q3DSurface * obj = (Q3DSurface *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQVALUE3DAXIS(1) )
    {
#endif
      obj->addAxis ( PQVALUE3DAXIS(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void releaseAxis(QValue3DAxis *axis)
*/
HB_FUNC_STATIC( Q3DSURFACE_RELEASEAXIS )
{
  Q3DSurface * obj = (Q3DSurface *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQVALUE3DAXIS(1) )
    {
#endif
      obj->releaseAxis ( PQVALUE3DAXIS(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QList<QValue3DAxis *> axes() const
*/
HB_FUNC_STATIC( Q3DSURFACE_AXES )
{
  Q3DSurface * obj = (Q3DSurface *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QList<QValue3DAxis *> list = obj->axes ();
      PHB_DYNS pDynSym = hb_dynsymFindName( "QVALUE3DAXIS" );
      PHB_ITEM pArray = hb_itemArrayNew(0);
      int i;
      for(i=0;i<list.count();i++)
      {
        if( pDynSym )
        {
          hb_vmPushDynSym( pDynSym );
          hb_vmPushNil();
          hb_vmDo( 0 );
          PHB_ITEM pObject = hb_itemNew( NULL );
          hb_itemCopy( pObject, hb_stackReturnItem() );
          PHB_ITEM pItem = hb_itemNew( NULL );
          hb_itemPutPtr( pItem, (QValue3DAxis *) list[i] );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
        else
        {
          hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QVALUE3DAXIS", HB_ERR_ARGS_BASEPARAMS );
        }
      }
      hb_itemReturnRelease(pArray);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

using namespace QtDataVisualization;

/*
void axisXChanged( QValue3DAxis * axis )
*/
HB_FUNC_STATIC( Q3DSURFACE_ONAXISXCHANGED )
{
  if( hb_pcount() == 1 )
  {
    Q3DSurface * sender = (Q3DSurface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      if( Signals2_connection( sender, "axisXChanged(QValue3DAxis*)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &Q3DSurface::axisXChanged, 
                                                              [sender]
                                                              (QValue3DAxis * arg1) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "axisXChanged(QValue3DAxis*)" );

          if( cb )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "Q3DSURFACE" );
            PHB_ITEM pArg1 = Signals2_return_qobject( (QObject *) arg1, "QVALUE3DAXIS" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals2_store_connection( sender, "axisXChanged(QValue3DAxis*)", connection );

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
  }
  else if( hb_pcount() == 0 )
  {
    Q3DSurface * sender = (Q3DSurface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      Signals2_disconnection( sender, "axisXChanged(QValue3DAxis*)" );

      QObject::disconnect( Signals2_get_connection( sender, "axisXChanged(QValue3DAxis*)" ) );

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
}

/*
void axisYChanged( QValue3DAxis * axis )
*/
HB_FUNC_STATIC( Q3DSURFACE_ONAXISYCHANGED )
{
  if( hb_pcount() == 1 )
  {
    Q3DSurface * sender = (Q3DSurface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      if( Signals2_connection( sender, "axisYChanged(QValue3DAxis*)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &Q3DSurface::axisYChanged, 
                                                              [sender]
                                                              (QValue3DAxis * arg1) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "axisYChanged(QValue3DAxis*)" );

          if( cb )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "Q3DSURFACE" );
            PHB_ITEM pArg1 = Signals2_return_qobject( (QObject *) arg1, "QVALUE3DAXIS" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals2_store_connection( sender, "axisYChanged(QValue3DAxis*)", connection );

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
  }
  else if( hb_pcount() == 0 )
  {
    Q3DSurface * sender = (Q3DSurface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      Signals2_disconnection( sender, "axisYChanged(QValue3DAxis*)" );

      QObject::disconnect( Signals2_get_connection( sender, "axisYChanged(QValue3DAxis*)" ) );

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
}

/*
void axisZChanged( QValue3DAxis * axis )
*/
HB_FUNC_STATIC( Q3DSURFACE_ONAXISZCHANGED )
{
  if( hb_pcount() == 1 )
  {
    Q3DSurface * sender = (Q3DSurface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      if( Signals2_connection( sender, "axisZChanged(QValue3DAxis*)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &Q3DSurface::axisZChanged, 
                                                              [sender]
                                                              (QValue3DAxis * arg1) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "axisZChanged(QValue3DAxis*)" );

          if( cb )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "Q3DSURFACE" );
            PHB_ITEM pArg1 = Signals2_return_qobject( (QObject *) arg1, "QVALUE3DAXIS" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals2_store_connection( sender, "axisZChanged(QValue3DAxis*)", connection );

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
  }
  else if( hb_pcount() == 0 )
  {
    Q3DSurface * sender = (Q3DSurface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      Signals2_disconnection( sender, "axisZChanged(QValue3DAxis*)" );

      QObject::disconnect( Signals2_get_connection( sender, "axisZChanged(QValue3DAxis*)" ) );

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
}

/*
void flipHorizontalGridChanged( bool flip )
*/
HB_FUNC_STATIC( Q3DSURFACE_ONFLIPHORIZONTALGRIDCHANGED )
{
  if( hb_pcount() == 1 )
  {
    Q3DSurface * sender = (Q3DSurface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      if( Signals2_connection( sender, "flipHorizontalGridChanged(bool)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &Q3DSurface::flipHorizontalGridChanged, 
                                                              [sender]
                                                              (bool arg1) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "flipHorizontalGridChanged(bool)" );

          if( cb )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "Q3DSURFACE" );
            PHB_ITEM pArg1 = hb_itemPutL( NULL, arg1 );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals2_store_connection( sender, "flipHorizontalGridChanged(bool)", connection );

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
  }
  else if( hb_pcount() == 0 )
  {
    Q3DSurface * sender = (Q3DSurface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      Signals2_disconnection( sender, "flipHorizontalGridChanged(bool)" );

      QObject::disconnect( Signals2_get_connection( sender, "flipHorizontalGridChanged(bool)" ) );

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
}

/*
void selectedSeriesChanged( QSurface3DSeries * series )
*/
HB_FUNC_STATIC( Q3DSURFACE_ONSELECTEDSERIESCHANGED )
{
  if( hb_pcount() == 1 )
  {
    Q3DSurface * sender = (Q3DSurface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      if( Signals2_connection( sender, "selectedSeriesChanged(QSurface3DSeries*)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &Q3DSurface::selectedSeriesChanged, 
                                                              [sender]
                                                              (QSurface3DSeries * arg1) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "selectedSeriesChanged(QSurface3DSeries*)" );

          if( cb )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "Q3DSURFACE" );
            PHB_ITEM pArg1 = Signals2_return_qobject( (QObject *) arg1, "QSURFACE3DSERIES" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals2_store_connection( sender, "selectedSeriesChanged(QSurface3DSeries*)", connection );

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
  }
  else if( hb_pcount() == 0 )
  {
    Q3DSurface * sender = (Q3DSurface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      Signals2_disconnection( sender, "selectedSeriesChanged(QSurface3DSeries*)" );

      QObject::disconnect( Signals2_get_connection( sender, "selectedSeriesChanged(QSurface3DSeries*)" ) );

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
}

#pragma ENDDUMP
