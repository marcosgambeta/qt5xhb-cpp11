/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QABSTRACTOAUTHREPLYHANDLER
REQUEST QNETWORKACCESSMANAGER
REQUEST QURL
#endif

CLASS QAbstractOAuth INHERIT QObject

   METHOD delete
   METHOD clientIdentifier
   METHOD setClientIdentifier
   METHOD token
   METHOD setToken
   METHOD authorizationUrl
   METHOD setAuthorizationUrl
   METHOD setContentType
   METHOD networkAccessManager
   METHOD setNetworkAccessManager
   METHOD replyHandler
   METHOD setReplyHandler
   METHOD grant

   METHOD onClientIdentifierChanged
   METHOD onTokenChanged
   METHOD onStatusChanged
   METHOD onAuthorizationUrlChanged
   METHOD onContentTypeChanged
   METHOD onRequestFailed
   METHOD onAuthorizeWithBrowser
   METHOD onGranted
   METHOD onFinished
   METHOD onReplyDataReceived

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAbstractOAuth
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
#include <QtNetworkAuth/QAbstractOAuth>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals3.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
#include <QtNetworkAuth/QAbstractOAuth>
#endif
#endif

#include <QtNetwork/QNetworkAccessManager>
#include <QtNetworkAuth/QAbstractOAuthReplyHandler>

/*
explicit QAbstractOAuth(QAbstractOAuthPrivate &, QObject *parent = nullptr) [protected]
*/

/*
virtual ~QAbstractOAuth()
*/
HB_FUNC_STATIC( QABSTRACTOAUTH_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QAbstractOAuth * obj = (QAbstractOAuth *) _qt5xhb_itemGetPtrStackSelfItem();

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
QString clientIdentifier() const
*/
HB_FUNC_STATIC( QABSTRACTOAUTH_CLIENTIDENTIFIER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QAbstractOAuth * obj = (QAbstractOAuth *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->clientIdentifier () );
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
void setClientIdentifier(const QString &clientIdentifier)
*/
HB_FUNC_STATIC( QABSTRACTOAUTH_SETCLIENTIDENTIFIER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QAbstractOAuth * obj = (QAbstractOAuth *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      obj->setClientIdentifier ( PQSTRING(1) );
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
QString token() const
*/
HB_FUNC_STATIC( QABSTRACTOAUTH_TOKEN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QAbstractOAuth * obj = (QAbstractOAuth *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->token () );
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
void setToken(const QString &token)
*/
HB_FUNC_STATIC( QABSTRACTOAUTH_SETTOKEN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QAbstractOAuth * obj = (QAbstractOAuth *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      obj->setToken ( PQSTRING(1) );
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

/*
QUrl authorizationUrl() const
*/
HB_FUNC_STATIC( QABSTRACTOAUTH_AUTHORIZATIONURL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QAbstractOAuth * obj = (QAbstractOAuth *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QUrl * ptr = new QUrl( obj->authorizationUrl () );
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
void setAuthorizationUrl(const QUrl &url)
*/
HB_FUNC_STATIC( QABSTRACTOAUTH_SETAUTHORIZATIONURL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QAbstractOAuth * obj = (QAbstractOAuth *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQURL(1) )
    {
#endif
      obj->setAuthorizationUrl ( *PQURL(1) );
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
QVariantMap extraTokens() const
*/

/*
ContentType contentType() const
*/

/*
void setContentType(ContentType contentType)
*/
HB_FUNC_STATIC( QABSTRACTOAUTH_SETCONTENTTYPE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QAbstractOAuth * obj = (QAbstractOAuth *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setContentType ( (QAbstractOAuth::ContentType) hb_parni(1) );
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
QNetworkAccessManager *networkAccessManager() const
*/
HB_FUNC_STATIC( QABSTRACTOAUTH_NETWORKACCESSMANAGER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QAbstractOAuth * obj = (QAbstractOAuth *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QNetworkAccessManager * ptr = obj->networkAccessManager ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QNETWORKACCESSMANAGER" );
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
void setNetworkAccessManager(QNetworkAccessManager *networkAccessManager)
*/
HB_FUNC_STATIC( QABSTRACTOAUTH_SETNETWORKACCESSMANAGER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QAbstractOAuth * obj = (QAbstractOAuth *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQNETWORKACCESSMANAGER(1) )
    {
#endif
      obj->setNetworkAccessManager ( PQNETWORKACCESSMANAGER(1) );
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
QAbstractOAuthReplyHandler *replyHandler() const
*/
HB_FUNC_STATIC( QABSTRACTOAUTH_REPLYHANDLER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QAbstractOAuth * obj = (QAbstractOAuth *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QAbstractOAuthReplyHandler * ptr = obj->replyHandler ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QABSTRACTOAUTHREPLYHANDLER" );
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
void setReplyHandler(QAbstractOAuthReplyHandler *handler)
*/
HB_FUNC_STATIC( QABSTRACTOAUTH_SETREPLYHANDLER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QAbstractOAuth * obj = (QAbstractOAuth *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQABSTRACTOAUTHREPLYHANDLER(1) )
    {
#endif
      obj->setReplyHandler ( PQABSTRACTOAUTHREPLYHANDLER(1) );
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
Q_INVOKABLE virtual QNetworkReply *head(const QUrl &url, const QVariantMap &parameters = QVariantMap()) = 0
*/

/*
Q_INVOKABLE virtual QNetworkReply *get(const QUrl &url, const QVariantMap &parameters = QVariantMap()) = 0
*/

/*
Q_INVOKABLE virtual QNetworkReply *post(const QUrl &url, const QVariantMap &parameters = QVariantMap()) = 0
*/

/*
Q_INVOKABLE virtual QNetworkReply *put(const QUrl &url, const QVariantMap &parameters = QVariantMap()) = 0
*/

/*
Q_INVOKABLE virtual QNetworkReply *deleteResource( const QUrl &url, const QVariantMap &parameters = QVariantMap()) = 0
*/

/*
ModifyParametersFunction modifyParametersFunction() const
*/

/*
void setModifyParametersFunction(const ModifyParametersFunction &modifyParametersFunction)
*/

/*
virtual void grant() = 0 (slot)
*/
HB_FUNC_STATIC( QABSTRACTOAUTH_GRANT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QAbstractOAuth * obj = (QAbstractOAuth *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->grant ();
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
void setStatus(Status status) [protected]
*/

/*
QString callback() const [protected]
*/

/*
virtual void resourceOwnerAuthorization(const QUrl &url, const QVariantMap &parameters) [protected]
*/

/*
static QByteArray generateRandomString(quint8 length) [protected]
*/

/*
void clientIdentifierChanged( const QString & clientIdentifier )
*/
HB_FUNC_STATIC( QABSTRACTOAUTH_ONCLIENTIDENTIFIERCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QAbstractOAuth * sender = (QAbstractOAuth *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( sender != nullptr )
  {
    int index = sender->metaObject()->indexOfSignal("clientIdentifierChanged(QString)");

    if( hb_pcount() == 1 )
    {
      if( Signals3_connection( sender, index ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QAbstractOAuth::clientIdentifierChanged, 
                                                              [sender,index]
                                                              (const QString & arg1) {
          PHB_ITEM cb = Signals3_return_codeblock( sender, index );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals3_return_qobject ( (QObject *) sender, "QABSTRACTOAUTH" );
            PHB_ITEM pArg1 = hb_itemPutC( NULL, QSTRINGTOSTRING(arg1) );
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
void tokenChanged( const QString & token )
*/
HB_FUNC_STATIC( QABSTRACTOAUTH_ONTOKENCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QAbstractOAuth * sender = (QAbstractOAuth *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( sender != nullptr )
  {
    int index = sender->metaObject()->indexOfSignal("tokenChanged(QString)");

    if( hb_pcount() == 1 )
    {
      if( Signals3_connection( sender, index ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QAbstractOAuth::tokenChanged, 
                                                              [sender,index]
                                                              (const QString & arg1) {
          PHB_ITEM cb = Signals3_return_codeblock( sender, index );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals3_return_qobject ( (QObject *) sender, "QABSTRACTOAUTH" );
            PHB_ITEM pArg1 = hb_itemPutC( NULL, QSTRINGTOSTRING(arg1) );
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
void statusChanged( QAbstractOAuth::Status status )
*/
HB_FUNC_STATIC( QABSTRACTOAUTH_ONSTATUSCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QAbstractOAuth * sender = (QAbstractOAuth *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( sender != nullptr )
  {
    int index = sender->metaObject()->indexOfSignal("statusChanged(QAbstractOAuth::Status)");

    if( hb_pcount() == 1 )
    {
      if( Signals3_connection( sender, index ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QAbstractOAuth::statusChanged, 
                                                              [sender,index]
                                                              (QAbstractOAuth::Status arg1) {
          PHB_ITEM cb = Signals3_return_codeblock( sender, index );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals3_return_qobject ( (QObject *) sender, "QABSTRACTOAUTH" );
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
void authorizationUrlChanged( const QUrl & url )
*/
HB_FUNC_STATIC( QABSTRACTOAUTH_ONAUTHORIZATIONURLCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QAbstractOAuth * sender = (QAbstractOAuth *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( sender != nullptr )
  {
    int index = sender->metaObject()->indexOfSignal("authorizationUrlChanged(QUrl)");

    if( hb_pcount() == 1 )
    {
      if( Signals3_connection( sender, index ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QAbstractOAuth::authorizationUrlChanged, 
                                                              [sender,index]
                                                              (const QUrl & arg1) {
          PHB_ITEM cb = Signals3_return_codeblock( sender, index );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals3_return_qobject ( (QObject *) sender, "QABSTRACTOAUTH" );
            PHB_ITEM pArg1 = Signals3_return_object( (void *) &arg1, "QURL" );
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
void extraTokensChanged( const QVariantMap & tokens )
*/

/*
void contentTypeChanged( QAbstractOAuth::ContentType contentType )
*/
HB_FUNC_STATIC( QABSTRACTOAUTH_ONCONTENTTYPECHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QAbstractOAuth * sender = (QAbstractOAuth *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( sender != nullptr )
  {
    int index = sender->metaObject()->indexOfSignal("contentTypeChanged(QAbstractOAuth::ContentType)");

    if( hb_pcount() == 1 )
    {
      if( Signals3_connection( sender, index ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QAbstractOAuth::contentTypeChanged, 
                                                              [sender,index]
                                                              (QAbstractOAuth::ContentType arg1) {
          PHB_ITEM cb = Signals3_return_codeblock( sender, index );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals3_return_qobject ( (QObject *) sender, "QABSTRACTOAUTH" );
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
void requestFailed( const QAbstractOAuth::Error error )
*/
HB_FUNC_STATIC( QABSTRACTOAUTH_ONREQUESTFAILED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QAbstractOAuth * sender = (QAbstractOAuth *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( sender != nullptr )
  {
    int index = sender->metaObject()->indexOfSignal("requestFailed(QAbstractOAuth::Error)");

    if( hb_pcount() == 1 )
    {
      if( Signals3_connection( sender, index ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QAbstractOAuth::requestFailed, 
                                                              [sender,index]
                                                              (QAbstractOAuth::Error arg1) {
          PHB_ITEM cb = Signals3_return_codeblock( sender, index );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals3_return_qobject ( (QObject *) sender, "QABSTRACTOAUTH" );
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
void authorizeWithBrowser( const QUrl & url )
*/
HB_FUNC_STATIC( QABSTRACTOAUTH_ONAUTHORIZEWITHBROWSER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QAbstractOAuth * sender = (QAbstractOAuth *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( sender != nullptr )
  {
    int index = sender->metaObject()->indexOfSignal("authorizeWithBrowser(QUrl)");

    if( hb_pcount() == 1 )
    {
      if( Signals3_connection( sender, index ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QAbstractOAuth::authorizeWithBrowser, 
                                                              [sender,index]
                                                              (const QUrl & arg1) {
          PHB_ITEM cb = Signals3_return_codeblock( sender, index );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals3_return_qobject ( (QObject *) sender, "QABSTRACTOAUTH" );
            PHB_ITEM pArg1 = Signals3_return_object( (void *) &arg1, "QURL" );
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
void granted()
*/
HB_FUNC_STATIC( QABSTRACTOAUTH_ONGRANTED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QAbstractOAuth * sender = (QAbstractOAuth *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( sender != nullptr )
  {
    int index = sender->metaObject()->indexOfSignal("granted()");

    if( hb_pcount() == 1 )
    {
      if( Signals3_connection( sender, index ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QAbstractOAuth::granted, 
                                                              [sender,index]
                                                              () {
          PHB_ITEM cb = Signals3_return_codeblock( sender, index );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals3_return_qobject ( (QObject *) sender, "QABSTRACTOAUTH" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 1, pSender );
            hb_itemRelease( pSender );
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
void finished( QNetworkReply * reply )
*/
HB_FUNC_STATIC( QABSTRACTOAUTH_ONFINISHED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QAbstractOAuth * sender = (QAbstractOAuth *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( sender != nullptr )
  {
    int index = sender->metaObject()->indexOfSignal("finished(QNetworkReply*)");

    if( hb_pcount() == 1 )
    {
      if( Signals3_connection( sender, index ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QAbstractOAuth::finished, 
                                                              [sender,index]
                                                              (QNetworkReply * arg1) {
          PHB_ITEM cb = Signals3_return_codeblock( sender, index );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals3_return_qobject ( (QObject *) sender, "QABSTRACTOAUTH" );
            PHB_ITEM pArg1 = Signals3_return_qobject( (QObject *) arg1, "QNETWORKREPLY" );
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
void replyDataReceived( const QByteArray & data )
*/
HB_FUNC_STATIC( QABSTRACTOAUTH_ONREPLYDATARECEIVED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QAbstractOAuth * sender = (QAbstractOAuth *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( sender != nullptr )
  {
    int index = sender->metaObject()->indexOfSignal("replyDataReceived(QByteArray)");

    if( hb_pcount() == 1 )
    {
      if( Signals3_connection( sender, index ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QAbstractOAuth::replyDataReceived, 
                                                              [sender,index]
                                                              (const QByteArray & arg1) {
          PHB_ITEM cb = Signals3_return_codeblock( sender, index );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals3_return_qobject ( (QObject *) sender, "QABSTRACTOAUTH" );
            PHB_ITEM pArg1 = Signals3_return_object( (void *) &arg1, "QBYTEARRAY" );
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
