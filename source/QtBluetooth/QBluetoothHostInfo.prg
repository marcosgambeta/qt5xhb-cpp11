/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBLUETOOTHADDRESS
#endif

CLASS QBluetoothHostInfo

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD address
   METHOD setAddress
   METHOD name
   METHOD setName

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QBluetoothHostInfo
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QtBluetooth/QBluetoothHostInfo>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QtBluetooth/QBluetoothHostInfo>
#endif
#endif

/*
QBluetoothHostInfo()
*/
void QBluetoothHostInfo_new1()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  auto obj = new QBluetoothHostInfo();
  Qt5xHb::returnNewObject( obj, true );
#endif
}

/*
QBluetoothHostInfo(const QBluetoothHostInfo &other)
*/
void QBluetoothHostInfo_new2()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  auto obj = new QBluetoothHostInfo( *PQBLUETOOTHHOSTINFO(1) );
  Qt5xHb::returnNewObject( obj, true );
#endif
}

/*
[1]QBluetoothHostInfo()
[2]QBluetoothHostInfo(const QBluetoothHostInfo &other)
*/

HB_FUNC_STATIC( QBLUETOOTHHOSTINFO_NEW )
{
  if( ISNUMPAR(0) )
  {
    QBluetoothHostInfo_new1();
  }
  else if( ISNUMPAR(1) && ISQBLUETOOTHHOSTINFO(1) )
  {
    QBluetoothHostInfo_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QBLUETOOTHHOSTINFO_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  auto obj = (QBluetoothHostInfo *) Qt5xHb::itemGetPtrStackSelfItem();

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
#endif
}

/*
QBluetoothAddress address() const
*/
HB_FUNC_STATIC( QBLUETOOTHHOSTINFO_ADDRESS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  auto obj = (QBluetoothHostInfo *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QBluetoothAddress( obj->address() );
      Qt5xHb::createReturnClass( ptr, "QBLUETOOTHADDRESS", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setAddress(const QBluetoothAddress &address)
*/
HB_FUNC_STATIC( QBLUETOOTHHOSTINFO_SETADDRESS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  auto obj = (QBluetoothHostInfo *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQBLUETOOTHADDRESS(1) )
    {
#endif
      obj->setAddress( *PQBLUETOOTHADDRESS(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QString name() const
*/
HB_FUNC_STATIC( QBLUETOOTHHOSTINFO_NAME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  auto obj = (QBluetoothHostInfo *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->name() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setName(const QString &name)
*/
HB_FUNC_STATIC( QBLUETOOTHHOSTINFO_SETNAME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  auto obj = (QBluetoothHostInfo *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      obj->setName( PQSTRING(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

HB_FUNC_STATIC( QBLUETOOTHHOSTINFO_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( nullptr, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( nullptr, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( nullptr, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( nullptr, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QBLUETOOTHHOSTINFO_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QBLUETOOTHHOSTINFO_NEWFROM );
}

HB_FUNC_STATIC( QBLUETOOTHHOSTINFO_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QBLUETOOTHHOSTINFO_NEWFROM );
}

HB_FUNC_STATIC( QBLUETOOTHHOSTINFO_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QBLUETOOTHHOSTINFO_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( nullptr, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

#pragma ENDDUMP
