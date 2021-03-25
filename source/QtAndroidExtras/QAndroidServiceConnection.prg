/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QANDROIDJNIOBJECT
#endif

CLASS QAndroidServiceConnection

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD onServiceConnected
   METHOD onServiceDisconnected
   METHOD handle

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QAndroidServiceConnection
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
#include <QtAndroidExtras/QAndroidServiceConnection>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
#include <QtAndroidExtras/QAndroidServiceConnection>
#endif
#endif

/*
QAndroidServiceConnection()
*/
void QAndroidServiceConnection_new1()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  auto obj = new QAndroidServiceConnection();
  Qt5xHb::returnNewObject( obj, true );
#endif
}

/*
QAndroidServiceConnection( const QAndroidJniObject & serviceConnection )
*/
void QAndroidServiceConnection_new2()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  auto obj = new QAndroidServiceConnection( *PQANDROIDJNIOBJECT( 1 ) );
  Qt5xHb::returnNewObject( obj, true );
#endif
}

HB_FUNC_STATIC( QANDROIDSERVICECONNECTION_NEW )
{
  if( ISNUMPAR( 0 ) )
  {
    QAndroidServiceConnection_new1();
  }
  else if( ISNUMPAR( 1 ) && ISQANDROIDJNIOBJECT( 1 ) )
  {
    QAndroidServiceConnection_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
virtual ~QAndroidServiceConnection()
*/
HB_FUNC_STATIC( QANDROIDSERVICECONNECTION_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  auto obj = static_cast< QAndroidServiceConnection * >( Qt5xHb::itemGetPtrStackSelfItem() );

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
virtual void onServiceConnected( const QString & name, const QAndroidBinder & serviceBinder ) = 0
*/
HB_FUNC_STATIC( QANDROIDSERVICECONNECTION_ONSERVICECONNECTED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  auto obj = static_cast< QAndroidServiceConnection * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 2 ) && HB_ISCHAR( 1 ) && ISQANDROIDBINDER( 2 ) )
    {
#endif
      obj->onServiceConnected( PQSTRING( 1 ), *PQANDROIDBINDER( 2 ) );
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
virtual void onServiceDisconnected( const QString & name ) = 0
*/
HB_FUNC_STATIC( QANDROIDSERVICECONNECTION_ONSERVICEDISCONNECTED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  auto obj = static_cast< QAndroidServiceConnection * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && HB_ISCHAR( 1 ) )
    {
#endif
      obj->onServiceDisconnected( PQSTRING( 1 ) );
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
QAndroidJniObject handle() const
*/
HB_FUNC_STATIC( QANDROIDSERVICECONNECTION_HANDLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  auto obj = static_cast< QAndroidServiceConnection * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      auto ptr = new QAndroidJniObject( obj->handle() );
      Qt5xHb::createReturnClass( ptr, "QANDROIDJNIOBJECT", true );
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

HB_FUNC_STATIC( QANDROIDSERVICECONNECTION_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISOBJECT( 1 ) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( nullptr, static_cast< void * >( hb_itemGetPtr( hb_objSendMsg( hb_param( 1, HB_IT_OBJECT ), "POINTER", 0 ) ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( nullptr, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && HB_ISPOINTER( 1 ) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( nullptr, static_cast< void * >( hb_itemGetPtr( hb_param( 1, HB_IT_POINTER ) ) ) );
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

HB_FUNC_STATIC( QANDROIDSERVICECONNECTION_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QANDROIDSERVICECONNECTION_NEWFROM );
}

HB_FUNC_STATIC( QANDROIDSERVICECONNECTION_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QANDROIDSERVICECONNECTION_NEWFROM );
}

HB_FUNC_STATIC( QANDROIDSERVICECONNECTION_SELFDESTRUCTION )
{
  hb_retl( static_cast< bool >( hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) ) );
}

HB_FUNC_STATIC( QANDROIDSERVICECONNECTION_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISLOG( 1 ) )
  {
    PHB_ITEM des = hb_itemPutL( nullptr, hb_parl( 1 ) );
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
