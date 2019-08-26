/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QQMLCONTEXT
REQUEST QQMLENGINE
REQUEST QQMLERROR
REQUEST QQUICKITEM
REQUEST QSIZE
REQUEST QSURFACEFORMAT
REQUEST QURL
#endif

CLASS QQuickWidget INHERIT QWidget

   METHOD new
   METHOD delete
   METHOD source
   METHOD setSource
   METHOD engine
   METHOD rootContext
   METHOD rootObject
   METHOD resizeMode
   METHOD setResizeMode
   METHOD status
   METHOD errors
   METHOD sizeHint
   METHOD initialSize
   METHOD setContent
   METHOD format
   METHOD setFormat

   METHOD onStatusChanged
   METHOD onSceneGraphError

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QQuickWidget
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
#include <QtQuickWidgets/QQuickWidget>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals3.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
#include <QtQuickWidgets/QQuickWidget>
#endif
#endif

#include <QtQml/QQmlError>
#include <QtQml/QQmlEngine>
#include <QtQml/QQmlContext>
#include <QtQuick/QQuickItem>

/*
explicit QQuickWidget(QWidget *parent = nullptr)
*/
void QQuickWidget_new1 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QQuickWidget * o = new QQuickWidget ( OPQWIDGET(1,nullptr) );
  _qt5xhb_returnNewObject( o, false );
#endif
}

/*
QQuickWidget(QQmlEngine* engine, QWidget *parent)
*/
void QQuickWidget_new2 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QQuickWidget * o = new QQuickWidget ( PQQMLENGINE(1), PQWIDGET(2) );
  _qt5xhb_returnNewObject( o, false );
#endif
}

/*
QQuickWidget(const QUrl &source, QWidget *parent = nullptr)
*/
void QQuickWidget_new3 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QQuickWidget * o = new QQuickWidget ( *PQURL(1), OPQWIDGET(2,nullptr) );
  _qt5xhb_returnNewObject( o, false );
#endif
}

//[1]explicit QQuickWidget(QWidget *parent = nullptr)
//[2]QQuickWidget(QQmlEngine* engine, QWidget *parent)
//[3]QQuickWidget(const QUrl &source, QWidget *parent = nullptr)

HB_FUNC_STATIC( QQUICKWIDGET_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  if( ISBETWEEN(0,1) && ISOPTQWIDGET(1) )
  {
    QQuickWidget_new1();
  }
  else if( ISNUMPAR(2) && ISQQMLENGINE(1) && ISQWIDGET(2) )
  {
    QQuickWidget_new2();
  }
  else if( ISBETWEEN(1,2) && ISQURL(1) && ISOPTQWIDGET(2) )
  {
    QQuickWidget_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

HB_FUNC_STATIC( QQUICKWIDGET_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QQuickWidget * obj = (QQuickWidget *) _qt5xhb_itemGetPtrStackSelfItem();

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
QUrl source() const
*/
HB_FUNC_STATIC( QQUICKWIDGET_SOURCE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QQuickWidget * obj = (QQuickWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QUrl * ptr = new QUrl( obj->source () );
      _qt5xhb_createReturnClass ( ptr, "QURL", true );
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
void setSource(const QUrl&)
*/
HB_FUNC_STATIC( QQUICKWIDGET_SETSOURCE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QQuickWidget * obj = (QQuickWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQURL(1) )
    {
#endif
      obj->setSource ( *PQURL(1) );
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
QQmlEngine* engine() const
*/
HB_FUNC_STATIC( QQUICKWIDGET_ENGINE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QQuickWidget * obj = (QQuickWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QQmlEngine * ptr = obj->engine ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QQMLENGINE" );
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
QQmlContext* rootContext() const
*/
HB_FUNC_STATIC( QQUICKWIDGET_ROOTCONTEXT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QQuickWidget * obj = (QQuickWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QQmlContext * ptr = obj->rootContext ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QQMLCONTEXT" );
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
QQuickItem *rootObject() const
*/
HB_FUNC_STATIC( QQUICKWIDGET_ROOTOBJECT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QQuickWidget * obj = (QQuickWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QQuickItem * ptr = obj->rootObject ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QQUICKITEM" );
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
ResizeMode resizeMode() const
*/
HB_FUNC_STATIC( QQUICKWIDGET_RESIZEMODE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QQuickWidget * obj = (QQuickWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->resizeMode () );
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
void setResizeMode(ResizeMode)
*/
HB_FUNC_STATIC( QQUICKWIDGET_SETRESIZEMODE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QQuickWidget * obj = (QQuickWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setResizeMode ( (QQuickWidget::ResizeMode) hb_parni(1) );
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
Status status() const
*/
HB_FUNC_STATIC( QQUICKWIDGET_STATUS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QQuickWidget * obj = (QQuickWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->status () );
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
QList<QQmlError> errors() const
*/
HB_FUNC_STATIC( QQUICKWIDGET_ERRORS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QQuickWidget * obj = (QQuickWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QList<QQmlError> list = obj->errors ();
      PHB_DYNS pDynSym = hb_dynsymFindName( "QQMLERROR" );
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
          hb_itemPutPtr( pItem, (QQmlError *) new QQmlError ( list[i] ) );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          PHB_ITEM pDestroy = hb_itemNew( NULL );
          hb_itemPutL( pDestroy, true );
          hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
          hb_itemRelease( pDestroy );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
        else
        {
          hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QQMLERROR", HB_ERR_ARGS_BASEPARAMS );
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
#endif
}

/*
QSize sizeHint() const
*/
HB_FUNC_STATIC( QQUICKWIDGET_SIZEHINT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QQuickWidget * obj = (QQuickWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QSize * ptr = new QSize( obj->sizeHint () );
      _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
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
QSize initialSize() const
*/
HB_FUNC_STATIC( QQUICKWIDGET_INITIALSIZE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QQuickWidget * obj = (QQuickWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QSize * ptr = new QSize( obj->initialSize () );
      _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
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
void setContent(const QUrl& url, QQmlComponent *component, QObject *item)
*/
HB_FUNC_STATIC( QQUICKWIDGET_SETCONTENT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QQuickWidget * obj = (QQuickWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(3) && ISQURL(1) && ISQQMLCOMPONENT(2) && ISQOBJECT(3) )
    {
#endif
      obj->setContent ( *PQURL(1), PQQMLCOMPONENT(2), PQOBJECT(3) );
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
QSurfaceFormat format() const
*/
HB_FUNC_STATIC( QQUICKWIDGET_FORMAT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QQuickWidget * obj = (QQuickWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QSurfaceFormat * ptr = new QSurfaceFormat( obj->format () );
      _qt5xhb_createReturnClass ( ptr, "QSURFACEFORMAT", true );
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
void setFormat(const QSurfaceFormat &format)
*/
HB_FUNC_STATIC( QQUICKWIDGET_SETFORMAT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QQuickWidget * obj = (QQuickWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQSURFACEFORMAT(1) )
    {
#endif
      obj->setFormat ( *PQSURFACEFORMAT(1) );
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
void statusChanged( QQuickWidget::Status status )
*/
HB_FUNC_STATIC( QQUICKWIDGET_ONSTATUSCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QQuickWidget * sender = (QQuickWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( sender != nullptr )
  {
    int index = sender->metaObject()->indexOfSignal("statusChanged(QQuickWidget::Status)");

    if( hb_pcount() == 1 )
    {
      if( Signals3_connection( sender, index ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QQuickWidget::statusChanged, 
                                                              [sender,index]
                                                              (QQuickWidget::Status arg1) {
          PHB_ITEM cb = Signals3_return_codeblock( sender, index );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals3_return_qobject ( (QObject *) sender, "QQUICKWIDGET" );
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
#else
hb_retl( false );
#endif
}

/*
void sceneGraphError( QQuickWindow::SceneGraphError error, const QString & message )
*/
HB_FUNC_STATIC( QQUICKWIDGET_ONSCENEGRAPHERROR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QQuickWidget * sender = (QQuickWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( sender != nullptr )
  {
    int index = sender->metaObject()->indexOfSignal("sceneGraphError(QQuickWindow::SceneGraphError,QString)");

    if( hb_pcount() == 1 )
    {
      if( Signals3_connection( sender, index ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QQuickWidget::sceneGraphError, 
                                                              [sender,index]
                                                              (QQuickWindow::SceneGraphError arg1, const QString & arg2) {
          PHB_ITEM cb = Signals3_return_codeblock( sender, index );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals3_return_qobject ( (QObject *) sender, "QQUICKWIDGET" );
            PHB_ITEM pArg1 = hb_itemPutNI( NULL, (int) arg1 );
            PHB_ITEM pArg2 = hb_itemPutC( NULL, QSTRINGTOSTRING(arg2) );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 3, pSender, pArg1, pArg2 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
            hb_itemRelease( pArg2 );
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
#else
hb_retl( false );
#endif
}

#pragma ENDDUMP
