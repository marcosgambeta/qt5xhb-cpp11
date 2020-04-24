/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSGMATERIAL
#endif

CLASS QSGGeometryNode INHERIT QSGBasicGeometryNode

   METHOD new
   METHOD delete
   METHOD material
   METHOD opaqueMaterial
   METHOD setMaterial
   METHOD setOpaqueMaterial

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QSGGeometryNode
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtQuick/QSGGeometryNode>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals4.h"

#ifdef __XHARBOUR__
#include <QtQuick/QSGGeometryNode>
#endif

/*
QSGGeometryNode()
*/
HB_FUNC_STATIC( QSGGEOMETRYNODE_NEW )
{
  if( ISNUMPAR(0) )
  {
    auto obj = new QSGGeometryNode();
    Qt5xHb::returnNewObject( obj, true );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QSGGEOMETRYNODE_DELETE )
{
  auto obj = (QSGGeometryNode *) Qt5xHb::itemGetPtrStackSelfItem();

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
}

/*
QSGMaterial * material() const
*/
HB_FUNC_STATIC( QSGGEOMETRYNODE_MATERIAL )
{
  auto obj = (QSGGeometryNode *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QSGMaterial * ptr = obj->material();
      Qt5xHb::createReturnClass( ptr, "QSGMATERIAL", false );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QSGMaterial * opaqueMaterial() const
*/
HB_FUNC_STATIC( QSGGEOMETRYNODE_OPAQUEMATERIAL )
{
  auto obj = (QSGGeometryNode *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QSGMaterial * ptr = obj->opaqueMaterial();
      Qt5xHb::createReturnClass( ptr, "QSGMATERIAL", false );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setMaterial(QSGMaterial * material)
*/
HB_FUNC_STATIC( QSGGEOMETRYNODE_SETMATERIAL )
{
  auto obj = (QSGGeometryNode *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQSGMATERIAL(1) )
    {
#endif
      obj->setMaterial( PQSGMATERIAL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setOpaqueMaterial(QSGMaterial * material)
*/
HB_FUNC_STATIC( QSGGEOMETRYNODE_SETOPAQUEMATERIAL )
{
  auto obj = (QSGGeometryNode *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQSGMATERIAL(1) )
    {
#endif
      obj->setOpaqueMaterial( PQSGMATERIAL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
