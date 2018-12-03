/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QBluetoothDeviceDiscoveryAgentSlots.h"

QBluetoothDeviceDiscoveryAgentSlots::QBluetoothDeviceDiscoveryAgentSlots(QObject *parent) : QObject(parent)
{
}

QBluetoothDeviceDiscoveryAgentSlots::~QBluetoothDeviceDiscoveryAgentSlots()
{
}
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
void QBluetoothDeviceDiscoveryAgentSlots::deviceDiscovered( const QBluetoothDeviceInfo & info )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "deviceDiscovered(QBluetoothDeviceInfo)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QBLUETOOTHDEVICEDISCOVERYAGENT" );
    PHB_ITEM pinfo = Signals_return_object( (void *) &info, "QBLUETOOTHDEVICEINFO" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pinfo );
    hb_itemRelease( psender );
    hb_itemRelease( pinfo );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
void QBluetoothDeviceDiscoveryAgentSlots::finished()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "finished()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QBLUETOOTHDEVICEDISCOVERYAGENT" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
void QBluetoothDeviceDiscoveryAgentSlots::error( QBluetoothDeviceDiscoveryAgent::Error error )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "error(QBluetoothDeviceDiscoveryAgent::Error)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QBLUETOOTHDEVICEDISCOVERYAGENT" );
    PHB_ITEM perror = hb_itemPutNI( NULL, (int) error );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, perror );
    hb_itemRelease( psender );
    hb_itemRelease( perror );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
void QBluetoothDeviceDiscoveryAgentSlots::canceled()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "canceled()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QBLUETOOTHDEVICEDISCOVERYAGENT" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}
#endif

void QBluetoothDeviceDiscoveryAgentSlots_connect_signal ( const QString & signal, const QString & slot )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothDeviceDiscoveryAgent * obj = (QBluetoothDeviceDiscoveryAgent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QBluetoothDeviceDiscoveryAgentSlots * s = QCoreApplication::instance()->findChild<QBluetoothDeviceDiscoveryAgentSlots *>();

    if( s == NULL )
    {
      s = new QBluetoothDeviceDiscoveryAgentSlots();
      s->moveToThread( QCoreApplication::instance()->thread() );
      s->setParent( QCoreApplication::instance() );
    }

    hb_retl( Signals_connection_disconnection( s, signal, slot ) );
  }
  else
  {
    hb_retl( false );
  }
#else
  hb_retl( false );
#endif
}
