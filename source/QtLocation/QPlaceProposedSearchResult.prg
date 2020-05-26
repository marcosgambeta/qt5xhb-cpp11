/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPLACESEARCHREQUEST
#endif

CLASS QPlaceProposedSearchResult INHERIT QPlaceSearchResult

   METHOD new
   METHOD delete
   METHOD searchRequest
   METHOD setSearchRequest

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QPlaceProposedSearchResult
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QtLocation/QPlaceProposedSearchResult>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QtLocation/QPlaceProposedSearchResult>
#endif
#endif

#include <QtLocation/QPlaceSearchRequest>

/*
QPlaceProposedSearchResult()
*/
HB_FUNC_STATIC( QPLACEPROPOSEDSEARCHRESULT_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  if( ISNUMPAR(0) )
  {
    auto obj = new QPlaceProposedSearchResult();
    Qt5xHb::returnNewObject( obj, true );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

HB_FUNC_STATIC( QPLACEPROPOSEDSEARCHRESULT_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = (QPlaceProposedSearchResult *) Qt5xHb::itemGetPtrStackSelfItem();

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
QPlaceSearchRequest searchRequest() const
*/
HB_FUNC_STATIC( QPLACEPROPOSEDSEARCHRESULT_SEARCHREQUEST )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = (QPlaceProposedSearchResult *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QPlaceSearchRequest( obj->searchRequest() );
      Qt5xHb::createReturnClass( ptr, "QPLACESEARCHREQUEST", true );
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
void setSearchRequest(const QPlaceSearchRequest &request)
*/
HB_FUNC_STATIC( QPLACEPROPOSEDSEARCHRESULT_SETSEARCHREQUEST )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = (QPlaceProposedSearchResult *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQPLACESEARCHREQUEST(1) )
    {
#endif
      obj->setSearchRequest( *PQPLACESEARCHREQUEST(1) );
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

#pragma ENDDUMP
