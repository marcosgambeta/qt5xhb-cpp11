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

CLASS QDBusConnectionInterface INHERIT QDBusAbstractInterface

   METHOD onServiceRegistered
   METHOD onServiceUnregistered
   METHOD onServiceOwnerChanged
   METHOD onCallWithCallbackFailed

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDBusConnectionInterface
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtDBus/QDBusConnectionInterface>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals3.h"

#ifdef __XHARBOUR__
#include <QtDBus/QDBusConnectionInterface>
#endif

/*
QDBusConnectionInterface(const QDBusConnection &connection, QObject *parent) [private]
*/

/*
QDBusReply<QStringList> registeredServiceNames() const
*/

/*
QDBusReply<bool> isServiceRegistered(const QString &serviceName) const
*/

/*
QDBusReply<QString> serviceOwner(const QString &name) const
*/

/*
QDBusReply<bool> unregisterService(const QString &serviceName)
*/

/*
QDBusReply<QDBusConnectionInterface::RegisterServiceReply> registerService(const QString &serviceName,ServiceQueueOptions qoption = DontQueueService,ServiceReplacementOptions roption = DontAllowReplacement)
*/

/*
QDBusReply<uint> servicePid(const QString &serviceName) const
*/

/*
QDBusReply<uint> serviceUid(const QString &serviceName) const
*/

/*
QDBusReply<void> startService(const QString &name)
*/

/*
void serviceRegistered( const QString & service )
*/
HB_FUNC_STATIC( QDBUSCONNECTIONINTERFACE_ONSERVICEREGISTERED )
{
  QDBusConnectionInterface * sender = (QDBusConnectionInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( sender != nullptr )
  {
    int index = sender->metaObject()->indexOfSignal("serviceRegistered(QString)");

    if( hb_pcount() == 1 )
    {
      if( Signals3_connection( sender, index ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QDBusConnectionInterface::serviceRegistered, 
                                                              [sender,index]
                                                              (const QString & arg1) {
          PHB_ITEM cb = Signals3_return_codeblock( sender, index );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals3_return_qobject ( (QObject *) sender, "QDBUSCONNECTIONINTERFACE" );
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
}

/*
void serviceUnregistered( const QString & service )
*/
HB_FUNC_STATIC( QDBUSCONNECTIONINTERFACE_ONSERVICEUNREGISTERED )
{
  QDBusConnectionInterface * sender = (QDBusConnectionInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( sender != nullptr )
  {
    int index = sender->metaObject()->indexOfSignal("serviceUnregistered(QString)");

    if( hb_pcount() == 1 )
    {
      if( Signals3_connection( sender, index ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QDBusConnectionInterface::serviceUnregistered, 
                                                              [sender,index]
                                                              (const QString & arg1) {
          PHB_ITEM cb = Signals3_return_codeblock( sender, index );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals3_return_qobject ( (QObject *) sender, "QDBUSCONNECTIONINTERFACE" );
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
}

/*
void serviceOwnerChanged( const QString & name, const QString & oldOwner, const QString & newOwner )
*/
HB_FUNC_STATIC( QDBUSCONNECTIONINTERFACE_ONSERVICEOWNERCHANGED )
{
  QDBusConnectionInterface * sender = (QDBusConnectionInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( sender != nullptr )
  {
    int index = sender->metaObject()->indexOfSignal("serviceOwnerChanged(QString,QString,QString)");

    if( hb_pcount() == 1 )
    {
      if( Signals3_connection( sender, index ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QDBusConnectionInterface::serviceOwnerChanged, 
                                                              [sender,index]
                                                              (const QString & arg1, const QString & arg2, const QString & arg3) {
          PHB_ITEM cb = Signals3_return_codeblock( sender, index );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals3_return_qobject ( (QObject *) sender, "QDBUSCONNECTIONINTERFACE" );
            PHB_ITEM pArg1 = hb_itemPutC( NULL, QSTRINGTOSTRING(arg1) );
            PHB_ITEM pArg2 = hb_itemPutC( NULL, QSTRINGTOSTRING(arg2) );
            PHB_ITEM pArg3 = hb_itemPutC( NULL, QSTRINGTOSTRING(arg3) );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 4, pSender, pArg1, pArg2, pArg3 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
            hb_itemRelease( pArg2 );
            hb_itemRelease( pArg3 );
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
}

/*
void callWithCallbackFailed( const QDBusError & error, const QDBusMessage & call )
*/
HB_FUNC_STATIC( QDBUSCONNECTIONINTERFACE_ONCALLWITHCALLBACKFAILED )
{
  QDBusConnectionInterface * sender = (QDBusConnectionInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( sender != nullptr )
  {
    int index = sender->metaObject()->indexOfSignal("callWithCallbackFailed(QDBusError,QDBusMessage)");

    if( hb_pcount() == 1 )
    {
      if( Signals3_connection( sender, index ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QDBusConnectionInterface::callWithCallbackFailed, 
                                                              [sender,index]
                                                              (const QDBusError & arg1, const QDBusMessage & arg2) {
          PHB_ITEM cb = Signals3_return_codeblock( sender, index );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals3_return_qobject ( (QObject *) sender, "QDBUSCONNECTIONINTERFACE" );
            PHB_ITEM pArg1 = Signals3_return_object( (void *) &arg1, "QDBUSERROR" );
            PHB_ITEM pArg2 = Signals3_return_object( (void *) &arg2, "QDBUSMESSAGE" );
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
}

#pragma ENDDUMP
