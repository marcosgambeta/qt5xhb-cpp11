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

CLASS QCameraCaptureBufferFormatControl INHERIT QMediaObject

   METHOD delete
   METHOD bufferFormat
   METHOD setBufferFormat
   METHOD supportedBufferFormats

   METHOD onBufferFormatChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QCameraCaptureBufferFormatControl
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QCameraCaptureBufferFormatControl>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals2.h"

#ifdef __XHARBOUR__
#include <QCameraCaptureBufferFormatControl>
#endif

/*
explicit QCameraCaptureBufferFormatControl(QObject *parent = nullptr) [protected]
*/

/*
~QCameraCaptureBufferFormatControl()
*/
HB_FUNC_STATIC( QCAMERACAPTUREBUFFERFORMATCONTROL_DELETE )
{
  QCameraCaptureBufferFormatControl * obj = (QCameraCaptureBufferFormatControl *) _qt5xhb_itemGetPtrStackSelfItem();

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
virtual QVideoFrame::PixelFormat bufferFormat() const = 0
*/
HB_FUNC_STATIC( QCAMERACAPTUREBUFFERFORMATCONTROL_BUFFERFORMAT )
{
  QCameraCaptureBufferFormatControl * obj = (QCameraCaptureBufferFormatControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->bufferFormat () );
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
virtual void setBufferFormat(QVideoFrame::PixelFormat format) = 0
*/
HB_FUNC_STATIC( QCAMERACAPTUREBUFFERFORMATCONTROL_SETBUFFERFORMAT )
{
  QCameraCaptureBufferFormatControl * obj = (QCameraCaptureBufferFormatControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setBufferFormat ( (QVideoFrame::PixelFormat) hb_parni(1) );
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
virtual QList<QVideoFrame::PixelFormat> supportedBufferFormats() const = 0
*/
HB_FUNC_STATIC( QCAMERACAPTUREBUFFERFORMATCONTROL_SUPPORTEDBUFFERFORMATS )
{
  QCameraCaptureBufferFormatControl * obj = (QCameraCaptureBufferFormatControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QList<QVideoFrame::PixelFormat> list = obj->supportedBufferFormats ();
      PHB_ITEM pArray = hb_itemArrayNew(0);
      int i;
      for(i=0;i<list.count();i++)
      {
        PHB_ITEM pItem = hb_itemPutNI( NULL, (int) list[i] );
        hb_arrayAddForward( pArray, pItem );
        hb_itemRelease(pItem);
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
void bufferFormatChanged( QVideoFrame::PixelFormat format )
*/
HB_FUNC_STATIC( QCAMERACAPTUREBUFFERFORMATCONTROL_ONBUFFERFORMATCHANGED )
{
  QCameraCaptureBufferFormatControl * sender = (QCameraCaptureBufferFormatControl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( hb_pcount() == 1 )
  {
    if( sender != nullptr )
    {
      if( Signals2_connection( sender, "bufferFormatChanged(QVideoFrame::PixelFormat)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QCameraCaptureBufferFormatControl::bufferFormatChanged, 
                                                              [sender]
                                                              (QVideoFrame::PixelFormat arg1) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "bufferFormatChanged(QVideoFrame::PixelFormat)" );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QCAMERACAPTUREBUFFERFORMATCONTROL" );
            PHB_ITEM pArg1 = hb_itemPutNI( NULL, (int) arg1 );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals2_store_connection( sender, "bufferFormatChanged(QVideoFrame::PixelFormat)", connection );

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
      Signals2_disconnection( sender, "bufferFormatChanged(QVideoFrame::PixelFormat)" );

      QObject::disconnect( Signals2_get_connection( sender, "bufferFormatChanged(QVideoFrame::PixelFormat)" ) );

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
