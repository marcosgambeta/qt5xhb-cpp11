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

CLASS QCameraZoomControl INHERIT QMediaControl

   METHOD delete
   METHOD currentDigitalZoom
   METHOD currentOpticalZoom
   METHOD maximumDigitalZoom
   METHOD maximumOpticalZoom
   METHOD requestedDigitalZoom
   METHOD requestedOpticalZoom
   METHOD zoomTo

   METHOD onCurrentDigitalZoomChanged
   METHOD onCurrentOpticalZoomChanged
   METHOD onMaximumDigitalZoomChanged
   METHOD onMaximumOpticalZoomChanged
   METHOD onRequestedDigitalZoomChanged
   METHOD onRequestedOpticalZoomChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QCameraZoomControl
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QCameraZoomControl>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals2.h"

#ifdef __XHARBOUR__
#include <QCameraZoomControl>
#endif

/*
explicit QCameraZoomControl(QObject *parent = nullptr) [protected]
*/

/*
~QCameraZoomControl()
*/
HB_FUNC_STATIC( QCAMERAZOOMCONTROL_DELETE )
{
  QCameraZoomControl * obj = (QCameraZoomControl *) _qt5xhb_itemGetPtrStackSelfItem();

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
virtual qreal currentDigitalZoom() const = 0
*/
HB_FUNC_STATIC( QCAMERAZOOMCONTROL_CURRENTDIGITALZOOM )
{
  QCameraZoomControl * obj = (QCameraZoomControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->currentDigitalZoom () );
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
virtual qreal currentOpticalZoom() const = 0
*/
HB_FUNC_STATIC( QCAMERAZOOMCONTROL_CURRENTOPTICALZOOM )
{
  QCameraZoomControl * obj = (QCameraZoomControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->currentOpticalZoom () );
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
virtual qreal maximumDigitalZoom() const = 0
*/
HB_FUNC_STATIC( QCAMERAZOOMCONTROL_MAXIMUMDIGITALZOOM )
{
  QCameraZoomControl * obj = (QCameraZoomControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->maximumDigitalZoom () );
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
virtual qreal maximumOpticalZoom() const = 0
*/
HB_FUNC_STATIC( QCAMERAZOOMCONTROL_MAXIMUMOPTICALZOOM )
{
  QCameraZoomControl * obj = (QCameraZoomControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->maximumOpticalZoom () );
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
virtual qreal requestedDigitalZoom() const = 0
*/
HB_FUNC_STATIC( QCAMERAZOOMCONTROL_REQUESTEDDIGITALZOOM )
{
  QCameraZoomControl * obj = (QCameraZoomControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->requestedDigitalZoom () );
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
virtual qreal requestedOpticalZoom() const = 0
*/
HB_FUNC_STATIC( QCAMERAZOOMCONTROL_REQUESTEDOPTICALZOOM )
{
  QCameraZoomControl * obj = (QCameraZoomControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->requestedOpticalZoom () );
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
virtual void zoomTo(qreal optical, qreal digital) = 0
*/
HB_FUNC_STATIC( QCAMERAZOOMCONTROL_ZOOMTO )
{
  QCameraZoomControl * obj = (QCameraZoomControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
    {
#endif
      obj->zoomTo ( PQREAL(1), PQREAL(2) );
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
void currentDigitalZoomChanged( qreal zoom )
*/
HB_FUNC_STATIC( QCAMERAZOOMCONTROL_ONCURRENTDIGITALZOOMCHANGED )
{
  QCameraZoomControl * sender = (QCameraZoomControl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( hb_pcount() == 1 )
  {
    if( sender != nullptr )
    {
      if( Signals2_connection( sender, "currentDigitalZoomChanged(qreal)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QCameraZoomControl::currentDigitalZoomChanged, 
                                                              [sender]
                                                              (qreal arg1) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "currentDigitalZoomChanged(qreal)" );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QCAMERAZOOMCONTROL" );
            PHB_ITEM pArg1 = hb_itemPutND( NULL, arg1 );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals2_store_connection( sender, "currentDigitalZoomChanged(qreal)", connection );

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
    if( sender != nullptr )
    {
      Signals2_disconnection( sender, "currentDigitalZoomChanged(qreal)" );

      QObject::disconnect( Signals2_get_connection( sender, "currentDigitalZoomChanged(qreal)" ) );

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
void currentOpticalZoomChanged( qreal zoom )
*/
HB_FUNC_STATIC( QCAMERAZOOMCONTROL_ONCURRENTOPTICALZOOMCHANGED )
{
  QCameraZoomControl * sender = (QCameraZoomControl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( hb_pcount() == 1 )
  {
    if( sender != nullptr )
    {
      if( Signals2_connection( sender, "currentOpticalZoomChanged(qreal)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QCameraZoomControl::currentOpticalZoomChanged, 
                                                              [sender]
                                                              (qreal arg1) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "currentOpticalZoomChanged(qreal)" );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QCAMERAZOOMCONTROL" );
            PHB_ITEM pArg1 = hb_itemPutND( NULL, arg1 );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals2_store_connection( sender, "currentOpticalZoomChanged(qreal)", connection );

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
    if( sender != nullptr )
    {
      Signals2_disconnection( sender, "currentOpticalZoomChanged(qreal)" );

      QObject::disconnect( Signals2_get_connection( sender, "currentOpticalZoomChanged(qreal)" ) );

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
void maximumDigitalZoomChanged( qreal zoom )
*/
HB_FUNC_STATIC( QCAMERAZOOMCONTROL_ONMAXIMUMDIGITALZOOMCHANGED )
{
  QCameraZoomControl * sender = (QCameraZoomControl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( hb_pcount() == 1 )
  {
    if( sender != nullptr )
    {
      if( Signals2_connection( sender, "maximumDigitalZoomChanged(qreal)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QCameraZoomControl::maximumDigitalZoomChanged, 
                                                              [sender]
                                                              (qreal arg1) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "maximumDigitalZoomChanged(qreal)" );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QCAMERAZOOMCONTROL" );
            PHB_ITEM pArg1 = hb_itemPutND( NULL, arg1 );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals2_store_connection( sender, "maximumDigitalZoomChanged(qreal)", connection );

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
    if( sender != nullptr )
    {
      Signals2_disconnection( sender, "maximumDigitalZoomChanged(qreal)" );

      QObject::disconnect( Signals2_get_connection( sender, "maximumDigitalZoomChanged(qreal)" ) );

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
void maximumOpticalZoomChanged( qreal zoom )
*/
HB_FUNC_STATIC( QCAMERAZOOMCONTROL_ONMAXIMUMOPTICALZOOMCHANGED )
{
  QCameraZoomControl * sender = (QCameraZoomControl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( hb_pcount() == 1 )
  {
    if( sender != nullptr )
    {
      if( Signals2_connection( sender, "maximumOpticalZoomChanged(qreal)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QCameraZoomControl::maximumOpticalZoomChanged, 
                                                              [sender]
                                                              (qreal arg1) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "maximumOpticalZoomChanged(qreal)" );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QCAMERAZOOMCONTROL" );
            PHB_ITEM pArg1 = hb_itemPutND( NULL, arg1 );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals2_store_connection( sender, "maximumOpticalZoomChanged(qreal)", connection );

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
    if( sender != nullptr )
    {
      Signals2_disconnection( sender, "maximumOpticalZoomChanged(qreal)" );

      QObject::disconnect( Signals2_get_connection( sender, "maximumOpticalZoomChanged(qreal)" ) );

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
void requestedDigitalZoomChanged( qreal zoom )
*/
HB_FUNC_STATIC( QCAMERAZOOMCONTROL_ONREQUESTEDDIGITALZOOMCHANGED )
{
  QCameraZoomControl * sender = (QCameraZoomControl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( hb_pcount() == 1 )
  {
    if( sender != nullptr )
    {
      if( Signals2_connection( sender, "requestedDigitalZoomChanged(qreal)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QCameraZoomControl::requestedDigitalZoomChanged, 
                                                              [sender]
                                                              (qreal arg1) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "requestedDigitalZoomChanged(qreal)" );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QCAMERAZOOMCONTROL" );
            PHB_ITEM pArg1 = hb_itemPutND( NULL, arg1 );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals2_store_connection( sender, "requestedDigitalZoomChanged(qreal)", connection );

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
    if( sender != nullptr )
    {
      Signals2_disconnection( sender, "requestedDigitalZoomChanged(qreal)" );

      QObject::disconnect( Signals2_get_connection( sender, "requestedDigitalZoomChanged(qreal)" ) );

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
void requestedOpticalZoomChanged( qreal zoom )
*/
HB_FUNC_STATIC( QCAMERAZOOMCONTROL_ONREQUESTEDOPTICALZOOMCHANGED )
{
  QCameraZoomControl * sender = (QCameraZoomControl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( hb_pcount() == 1 )
  {
    if( sender != nullptr )
    {
      if( Signals2_connection( sender, "requestedOpticalZoomChanged(qreal)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QCameraZoomControl::requestedOpticalZoomChanged, 
                                                              [sender]
                                                              (qreal arg1) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "requestedOpticalZoomChanged(qreal)" );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QCAMERAZOOMCONTROL" );
            PHB_ITEM pArg1 = hb_itemPutND( NULL, arg1 );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals2_store_connection( sender, "requestedOpticalZoomChanged(qreal)", connection );

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
    if( sender != nullptr )
    {
      Signals2_disconnection( sender, "requestedOpticalZoomChanged(qreal)" );

      QObject::disconnect( Signals2_get_connection( sender, "requestedOpticalZoomChanged(qreal)" ) );

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
