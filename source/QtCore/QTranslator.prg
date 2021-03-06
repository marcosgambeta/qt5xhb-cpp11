/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QTranslator INHERIT QObject

   METHOD new
   METHOD delete
   METHOD isEmpty
   METHOD load
   METHOD translate

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QTranslator
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtCore/QTranslator>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#include <QtCore/QTranslator>
#endif

/*
QTranslator( QObject * parent = nullptr )
*/
HB_FUNC_STATIC( QTRANSLATOR_NEW )
{
  if( ISBETWEEN( 0, 1 ) && ( ISQOBJECT( 1 ) || HB_ISNIL( 1 ) ) )
  {
    auto obj = new QTranslator( OPQOBJECT( 1, nullptr ) );
    Qt5xHb::returnNewObject( obj, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QTRANSLATOR_DELETE )
{
  auto obj = qobject_cast< QTranslator * >( Qt5xHb::getQObjectPointerFromSelfItem() );

  if( obj != nullptr )
  {
    Qt5xHb::Events_disconnect_all_events( obj, true );
    Qt5xHb::Signals_disconnect_all_signals( obj, true );
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
virtual bool isEmpty() const
*/
HB_FUNC_STATIC( QTRANSLATOR_ISEMPTY )
{
  auto obj = qobject_cast< QTranslator * >( Qt5xHb::getQObjectPointerFromSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RBOOL( obj->isEmpty() );
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
bool load( const QString & filename, const QString & directory = QString(), const QString & search_delimiters = QString(), const QString & suffix = QString() )
*/
void QTranslator_load1()
{
  auto obj = qobject_cast< QTranslator * >( Qt5xHb::getQObjectPointerFromSelfItem() );

  if( obj != nullptr )
  {
    RBOOL( obj->load( PQSTRING( 1 ), OPQSTRING( 2, QString() ), OPQSTRING( 3, QString() ), OPQSTRING( 4, QString() ) ) );
  }
}

/*
bool load( const QLocale & locale, const QString & filename, const QString & prefix = QString(), const QString & directory = QString(), const QString & suffix = QString() )
*/
void QTranslator_load2()
{
  auto obj = qobject_cast< QTranslator * >( Qt5xHb::getQObjectPointerFromSelfItem() );

  if( obj != nullptr )
  {
    RBOOL( obj->load( *PQLOCALE( 1 ), PQSTRING( 2 ), OPQSTRING( 3, QString() ), OPQSTRING( 4, QString() ), OPQSTRING( 5, QString() ) ) );
  }
}

/*
bool load( const uchar * data, int len, const QString & directory = QString() )
*/
void QTranslator_load3()
{
  auto obj = qobject_cast< QTranslator * >( Qt5xHb::getQObjectPointerFromSelfItem() );

  if( obj != nullptr )
  {
    RBOOL( obj->load( PCONSTUCHAR( 1 ), PINT( 2 ), OPQSTRING( 3, QString() ) ) );
  }
}

HB_FUNC_STATIC( QTRANSLATOR_LOAD )
{
  if( ISBETWEEN( 1, 4 ) && HB_ISCHAR( 1 ) && ( HB_ISCHAR( 2 ) || HB_ISNIL( 2 ) ) && ( HB_ISCHAR( 3 ) || HB_ISNIL( 3 ) ) && ( HB_ISCHAR( 4 ) || HB_ISNIL( 4 ) ) )
  {
    QTranslator_load1();
  }
  else if( ISBETWEEN( 2, 5 ) && ISQLOCALE( 1 ) && HB_ISCHAR( 2 ) && ( HB_ISCHAR( 3 ) || HB_ISNIL( 3 ) ) && ( HB_ISCHAR( 4 ) || HB_ISNIL( 4 ) ) && ( HB_ISCHAR( 5 ) || HB_ISNIL( 5 ) ) )
  {
    QTranslator_load2();
  }
  else if( ISBETWEEN( 2, 3 ) && HB_ISCHAR( 1 ) && HB_ISNUM( 2 ) && ( HB_ISCHAR( 3 ) || HB_ISNIL( 3 ) ) )
  {
    QTranslator_load3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
virtual QString translate( const char * context, const char * sourceText, const char * disambiguation = nullptr, int n = -1) const
*/
HB_FUNC_STATIC( QTRANSLATOR_TRANSLATE )
{
  auto obj = qobject_cast< QTranslator * >( Qt5xHb::getQObjectPointerFromSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN( 2, 4 ) && HB_ISCHAR( 1 ) && HB_ISCHAR( 2 ) && ( HB_ISCHAR( 3 ) || HB_ISNIL( 3 ) ) && ( HB_ISNUM( 4 ) || HB_ISNIL( 4 ) ) )
    {
#endif
      RQSTRING( obj->translate( PCONSTCHAR( 1 ), PCONSTCHAR( 2 ), OPCONSTCHAR( 3, nullptr ), OPINT( 4, -1 ) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

#pragma ENDDUMP
