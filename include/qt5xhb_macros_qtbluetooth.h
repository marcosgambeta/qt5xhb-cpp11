/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QT5XHB_MACROS_QTBLUETOOTH_H
#define QT5XHB_MACROS_QTBLUETOOTH_H

#define ISQBLUETOOTHADDRESS(n)                              Qt5xHb::isObjectDerivedFrom(n,"QBluetoothAddress")
#define ISQBLUETOOTHDEVICEDISCOVERYAGENT(n)                 Qt5xHb::isObjectDerivedFrom(n,"QBluetoothDeviceDiscoveryAgent")
#define ISQBLUETOOTHDEVICEINFO(n)                           Qt5xHb::isObjectDerivedFrom(n,"QBluetoothDeviceInfo")
#define ISQBLUETOOTHHOSTINFO(n)                             Qt5xHb::isObjectDerivedFrom(n,"QBluetoothHostInfo")
#define ISQBLUETOOTHLOCALDEVICE(n)                          Qt5xHb::isObjectDerivedFrom(n,"QBluetoothLocalDevice")
#define ISQBLUETOOTHSERVER(n)                               Qt5xHb::isObjectDerivedFrom(n,"QBluetoothServer")
#define ISQBLUETOOTHSERVICEDISCOVERYAGENT(n)                Qt5xHb::isObjectDerivedFrom(n,"QBluetoothServiceDiscoveryAgent")
#define ISQBLUETOOTHSERVICEINFO(n)                          Qt5xHb::isObjectDerivedFrom(n,"QBluetoothServiceInfo")
#define ISQBLUETOOTHSOCKET(n)                               Qt5xHb::isObjectDerivedFrom(n,"QBluetoothSocket")
#define ISQBLUETOOTHTRANSFERMANAGER(n)                      Qt5xHb::isObjectDerivedFrom(n,"QBluetoothTransferManager")
#define ISQBLUETOOTHTRANSFERREPLY(n)                        Qt5xHb::isObjectDerivedFrom(n,"QBluetoothTransferReply")
#define ISQBLUETOOTHTRANSFERREQUEST(n)                      Qt5xHb::isObjectDerivedFrom(n,"QBluetoothTransferRequest")
#define ISQBLUETOOTHUUID(n)                                 Qt5xHb::isObjectDerivedFrom(n,"QBluetoothUuid")

#define PQBLUETOOTHADDRESS(n)                               (QBluetoothAddress *) Qt5xHb::itemGetPtr(n)
#define PQBLUETOOTHDEVICEDISCOVERYAGENT(n)                  (QBluetoothDeviceDiscoveryAgent *) Qt5xHb::itemGetPtr(n)
#define PQBLUETOOTHDEVICEINFO(n)                            (QBluetoothDeviceInfo *) Qt5xHb::itemGetPtr(n)
#define PQBLUETOOTHHOSTINFO(n)                              (QBluetoothHostInfo *) Qt5xHb::itemGetPtr(n)
#define PQBLUETOOTHLOCALDEVICE(n)                           (QBluetoothLocalDevice *) Qt5xHb::itemGetPtr(n)
#define PQBLUETOOTHSERVER(n)                                (QBluetoothServer *) Qt5xHb::itemGetPtr(n)
#define PQBLUETOOTHSERVICEDISCOVERYAGENT(n)                 (QBluetoothServiceDiscoveryAgent *) Qt5xHb::itemGetPtr(n)
#define PQBLUETOOTHSERVICEINFO(n)                           (QBluetoothServiceInfo *) Qt5xHb::itemGetPtr(n)
#define PQBLUETOOTHSOCKET(n)                                (QBluetoothSocket *) Qt5xHb::itemGetPtr(n)
#define PQBLUETOOTHTRANSFERMANAGER(n)                       (QBluetoothTransferManager *) Qt5xHb::itemGetPtr(n)
#define PQBLUETOOTHTRANSFERREPLY(n)                         (QBluetoothTransferReply *) Qt5xHb::itemGetPtr(n)
#define PQBLUETOOTHTRANSFERREQUEST(n)                       (QBluetoothTransferRequest *) Qt5xHb::itemGetPtr(n)
#define PQBLUETOOTHUUID(n)                                  (QBluetoothUuid *) Qt5xHb::itemGetPtr(n)

#define OPQBLUETOOTHADDRESS(n,v)                            HB_ISNIL(n)? v : (QBluetoothAddress *) Qt5xHb::itemGetPtr(n)
#define OPQBLUETOOTHDEVICEDISCOVERYAGENT(n,v)               HB_ISNIL(n)? v : (QBluetoothDeviceDiscoveryAgent *) Qt5xHb::itemGetPtr(n)
#define OPQBLUETOOTHDEVICEINFO(n,v)                         HB_ISNIL(n)? v : (QBluetoothDeviceInfo *) Qt5xHb::itemGetPtr(n)
#define OPQBLUETOOTHHOSTINFO(n,v)                           HB_ISNIL(n)? v : (QBluetoothHostInfo *) Qt5xHb::itemGetPtr(n)
#define OPQBLUETOOTHLOCALDEVICE(n,v)                        HB_ISNIL(n)? v : (QBluetoothLocalDevice *) Qt5xHb::itemGetPtr(n)
#define OPQBLUETOOTHSERVER(n,v)                             HB_ISNIL(n)? v : (QBluetoothServer *) Qt5xHb::itemGetPtr(n)
#define OPQBLUETOOTHSERVICEDISCOVERYAGENT(n,v)              HB_ISNIL(n)? v : (QBluetoothServiceDiscoveryAgent *) Qt5xHb::itemGetPtr(n)
#define OPQBLUETOOTHSERVICEINFO(n,v)                        HB_ISNIL(n)? v : (QBluetoothServiceInfo *) Qt5xHb::itemGetPtr(n)
#define OPQBLUETOOTHSOCKET(n,v)                             HB_ISNIL(n)? v : (QBluetoothSocket *) Qt5xHb::itemGetPtr(n)
#define OPQBLUETOOTHTRANSFERMANAGER(n,v)                    HB_ISNIL(n)? v : (QBluetoothTransferManager *) Qt5xHb::itemGetPtr(n)
#define OPQBLUETOOTHTRANSFERREPLY(n,v)                      HB_ISNIL(n)? v : (QBluetoothTransferReply *) Qt5xHb::itemGetPtr(n)
#define OPQBLUETOOTHTRANSFERREQUEST(n,v)                    HB_ISNIL(n)? v : (QBluetoothTransferRequest *) Qt5xHb::itemGetPtr(n)
#define OPQBLUETOOTHUUID(n,v)                               HB_ISNIL(n)? v : (QBluetoothUuid *) Qt5xHb::itemGetPtr(n)

#endif /* QT5XHB_MACROS_QTBLUETOOTH_H */
