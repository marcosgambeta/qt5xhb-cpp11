/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QRECTF
REQUEST QSGTEXTURE
#endif

CLASS QSGSimpleTextureNode INHERIT QSGGeometryNode

   METHOD new
   METHOD delete
   METHOD filtering
   METHOD rect
   METHOD setFiltering
   METHOD setRect
   METHOD setTexture
   METHOD texture

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QSGSimpleTextureNode
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtQuick/QSGSimpleTextureNode>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtQuick/QSGSimpleTextureNode>
#endif

/*
QSGSimpleTextureNode()
*/
HB_FUNC_STATIC( QSGSIMPLETEXTURENODE_NEW )
{
  if( ISNUMPAR( 0 ) )
  {
    auto obj = new QSGSimpleTextureNode();
    Qt5xHb::returnNewObject( obj, true );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QSGSIMPLETEXTURENODE_DELETE )
{
  auto obj = static_cast< QSGSimpleTextureNode * >( Qt5xHb::itemGetPtrStackSelfItem() );

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
QSGTexture::Filtering filtering() const
*/
HB_FUNC_STATIC( QSGSIMPLETEXTURENODE_FILTERING )
{
  auto obj = static_cast< QSGSimpleTextureNode * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RENUM( obj->filtering() );
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
QRectF rect() const
*/
HB_FUNC_STATIC( QSGSIMPLETEXTURENODE_RECT )
{
  auto obj = static_cast< QSGSimpleTextureNode * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      auto ptr = new QRectF( obj->rect() );
      Qt5xHb::createReturnClass( ptr, "QRECTF", true );
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
void setFiltering( QSGTexture::Filtering filtering )
*/
HB_FUNC_STATIC( QSGSIMPLETEXTURENODE_SETFILTERING )
{
  auto obj = static_cast< QSGSimpleTextureNode * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && HB_ISNUM( 1 ) )
    {
#endif
      obj->setFiltering( static_cast<QSGTexture::Filtering>( hb_parni( 1 ) ) );
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

/*
void setRect( const QRectF & r )
*/
void QSGSimpleTextureNode_setRect1()
{
  auto obj = static_cast< QSGSimpleTextureNode * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
    obj->setRect( *PQRECTF( 1 ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setRect( qreal x, qreal y, qreal w, qreal h )
*/
void QSGSimpleTextureNode_setRect2()
{
  auto obj = static_cast< QSGSimpleTextureNode * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
    obj->setRect( PQREAL( 1 ), PQREAL( 2 ), PQREAL( 3 ), PQREAL( 4 ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
[1]void setRect(const QRectF & r)
[2]void setRect(qreal x, qreal y, qreal w, qreal h)
*/

HB_FUNC_STATIC( QSGSIMPLETEXTURENODE_SETRECT )
{
  if( ISNUMPAR( 1 ) && ISQRECTF( 1 ) )
  {
    QSGSimpleTextureNode_setRect1();
  }
  else if( ISNUMPAR( 4 ) && HB_ISNUM( 1 ) && HB_ISNUM( 2 ) && HB_ISNUM( 3 ) && HB_ISNUM( 4 ) )
  {
    QSGSimpleTextureNode_setRect2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setTexture( QSGTexture * texture )
*/
HB_FUNC_STATIC( QSGSIMPLETEXTURENODE_SETTEXTURE )
{
  auto obj = static_cast< QSGSimpleTextureNode * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISQSGTEXTURE( 1 ) )
    {
#endif
      obj->setTexture( PQSGTEXTURE( 1 ) );
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

/*
QSGTexture * texture() const
*/
HB_FUNC_STATIC( QSGSIMPLETEXTURENODE_TEXTURE )
{
  auto obj = static_cast< QSGSimpleTextureNode * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      QSGTexture * ptr = obj->texture();
      Qt5xHb::createReturnQObjectClass( ptr, "QSGTEXTURE" );
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
