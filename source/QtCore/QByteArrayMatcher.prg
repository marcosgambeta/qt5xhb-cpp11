/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBYTEARRAY
#endif

CLASS QByteArrayMatcher

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD indexIn
   METHOD pattern
   METHOD setPattern

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QByteArrayMatcher
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtCore/QByteArrayMatcher>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtCore/QByteArrayMatcher>
#endif

/*
QByteArrayMatcher()
*/
void QByteArrayMatcher_new1()
{
  auto obj = new QByteArrayMatcher();
  Qt5xHb::returnNewObject( obj, true );
}

/*
QByteArrayMatcher( const QByteArray & pattern )
*/
void QByteArrayMatcher_new2()
{
  auto obj = new QByteArrayMatcher( *PQBYTEARRAY( 1 ) );
  Qt5xHb::returnNewObject( obj, true );
}

/*
QByteArrayMatcher( const char * pattern, int length )
*/
void QByteArrayMatcher_new3()
{
  auto obj = new QByteArrayMatcher( PCONSTCHAR( 1 ), PINT( 2 ) );
  Qt5xHb::returnNewObject( obj, true );
}

/*
QByteArrayMatcher( const QByteArrayMatcher & other )
*/
void QByteArrayMatcher_new4()
{
  auto obj = new QByteArrayMatcher( *PQBYTEARRAYMATCHER( 1 ) );
  Qt5xHb::returnNewObject( obj, true );
}

HB_FUNC_STATIC( QBYTEARRAYMATCHER_NEW )
{
  if( ISNUMPAR( 0 ) )
  {
    QByteArrayMatcher_new1();
  }
  else if( ISNUMPAR( 1 ) && ISQBYTEARRAY( 1 ) )
  {
    QByteArrayMatcher_new2();
  }
  else if( ISNUMPAR( 2 ) && HB_ISCHAR( 1 ) && HB_ISNUM( 2 ) )
  {
    QByteArrayMatcher_new3();
  }
  else if( ISNUMPAR( 1 ) && ISQBYTEARRAYMATCHER( 1 ) )
  {
    QByteArrayMatcher_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QBYTEARRAYMATCHER_DELETE )
{
  auto obj = static_cast< QByteArrayMatcher * >( Qt5xHb::itemGetPtrStackSelfItem() );

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
}

/*
int indexIn( const QByteArray & ba, int from = 0 ) const
*/
void QByteArrayMatcher_indexIn1()
{
  auto obj = static_cast< QByteArrayMatcher * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
    RINT( obj->indexIn( *PQBYTEARRAY( 1 ), OPINT( 2, 0 ) ) );
  }
}

/*
int indexIn( const char * str, int len, int from = 0 ) const
*/
void QByteArrayMatcher_indexIn2()
{
  auto obj = static_cast< QByteArrayMatcher * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
    RINT( obj->indexIn( PCONSTCHAR( 1 ), PINT( 2 ), OPINT( 3, 0 ) ) );
  }
}

HB_FUNC_STATIC( QBYTEARRAYMATCHER_INDEXIN )
{
  if( ISBETWEEN( 1, 2 ) && ISQBYTEARRAY( 1 ) && ( HB_ISNUM( 2 ) || HB_ISNIL( 2 ) ) )
  {
    QByteArrayMatcher_indexIn1();
  }
  else if( ISBETWEEN( 2, 3 ) && HB_ISCHAR( 1 ) && HB_ISNUM( 2 ) && ( HB_ISNUM( 3 ) || HB_ISNIL( 3 ) ) )
  {
    QByteArrayMatcher_indexIn2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QByteArray pattern() const
*/
HB_FUNC_STATIC( QBYTEARRAYMATCHER_PATTERN )
{
  auto obj = static_cast< QByteArrayMatcher * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      auto ptr = new QByteArray( obj->pattern() );
      Qt5xHb::createReturnClass( ptr, "QBYTEARRAY", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setPattern( const QByteArray & pattern )
*/
HB_FUNC_STATIC( QBYTEARRAYMATCHER_SETPATTERN )
{
  auto obj = static_cast< QByteArrayMatcher * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISQBYTEARRAY( 1 ) )
    {
#endif
      obj->setPattern( *PQBYTEARRAY( 1 ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( QBYTEARRAYMATCHER_NEWFROM )
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

HB_FUNC_STATIC( QBYTEARRAYMATCHER_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QBYTEARRAYMATCHER_NEWFROM );
}

HB_FUNC_STATIC( QBYTEARRAYMATCHER_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QBYTEARRAYMATCHER_NEWFROM );
}

HB_FUNC_STATIC( QBYTEARRAYMATCHER_SELFDESTRUCTION )
{
  hb_retl( static_cast< bool >( hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) ) );
}

HB_FUNC_STATIC( QBYTEARRAYMATCHER_SETSELFDESTRUCTION )
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
