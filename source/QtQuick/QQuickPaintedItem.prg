/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QCOLOR
REQUEST QRECTF
REQUEST QSIZE
#endif

CLASS QQuickPaintedItem INHERIT QQuickItem

   METHOD delete
   METHOD antialiasing
   METHOD contentsBoundingRect
   METHOD contentsScale
   METHOD contentsSize
   METHOD fillColor
   METHOD mipmap
   METHOD opaquePainting
   METHOD paint
   METHOD performanceHints
   METHOD renderTarget
   METHOD resetContentsSize
   METHOD setAntialiasing
   METHOD setContentsScale
   METHOD setContentsSize
   METHOD setFillColor
   METHOD setMipmap
   METHOD setOpaquePainting
   METHOD setPerformanceHint
   METHOD setPerformanceHints
   METHOD setRenderTarget
   METHOD update

   METHOD onContentsScaleChanged
   METHOD onContentsSizeChanged
   METHOD onFillColorChanged
   METHOD onRenderTargetChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QQuickPaintedItem
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QQuickPaintedItem>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals2.h"

#ifdef __XHARBOUR__
#include <QQuickPaintedItem>
#endif

HB_FUNC_STATIC( QQUICKPAINTEDITEM_DELETE )
{
  QQuickPaintedItem * obj = (QQuickPaintedItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool antialiasing() const
*/
HB_FUNC_STATIC( QQUICKPAINTEDITEM_ANTIALIASING )
{
  QQuickPaintedItem * obj = (QQuickPaintedItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->antialiasing () );
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
QRectF contentsBoundingRect() const
*/
HB_FUNC_STATIC( QQUICKPAINTEDITEM_CONTENTSBOUNDINGRECT )
{
  QQuickPaintedItem * obj = (QQuickPaintedItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QRectF * ptr = new QRectF( obj->contentsBoundingRect () );
      _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
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
qreal contentsScale() const
*/
HB_FUNC_STATIC( QQUICKPAINTEDITEM_CONTENTSSCALE )
{
  QQuickPaintedItem * obj = (QQuickPaintedItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->contentsScale () );
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
QSize contentsSize() const
*/
HB_FUNC_STATIC( QQUICKPAINTEDITEM_CONTENTSSIZE )
{
  QQuickPaintedItem * obj = (QQuickPaintedItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QSize * ptr = new QSize( obj->contentsSize () );
      _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
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
QColor fillColor() const
*/
HB_FUNC_STATIC( QQUICKPAINTEDITEM_FILLCOLOR )
{
  QQuickPaintedItem * obj = (QQuickPaintedItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QColor * ptr = new QColor( obj->fillColor () );
      _qt5xhb_createReturnClass ( ptr, "QCOLOR", true );
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
bool mipmap() const
*/
HB_FUNC_STATIC( QQUICKPAINTEDITEM_MIPMAP )
{
  QQuickPaintedItem * obj = (QQuickPaintedItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->mipmap () );
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
bool opaquePainting() const
*/
HB_FUNC_STATIC( QQUICKPAINTEDITEM_OPAQUEPAINTING )
{
  QQuickPaintedItem * obj = (QQuickPaintedItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->opaquePainting () );
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
virtual void paint(QPainter * painter) = 0
*/
HB_FUNC_STATIC( QQUICKPAINTEDITEM_PAINT )
{
  QQuickPaintedItem * obj = (QQuickPaintedItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQPAINTER(1) )
    {
#endif
      obj->paint ( PQPAINTER(1) );
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
PerformanceHints performanceHints() const
*/
HB_FUNC_STATIC( QQUICKPAINTEDITEM_PERFORMANCEHINTS )
{
  QQuickPaintedItem * obj = (QQuickPaintedItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->performanceHints () );
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
RenderTarget renderTarget() const
*/
HB_FUNC_STATIC( QQUICKPAINTEDITEM_RENDERTARGET )
{
  QQuickPaintedItem * obj = (QQuickPaintedItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->renderTarget () );
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
void resetContentsSize()
*/
HB_FUNC_STATIC( QQUICKPAINTEDITEM_RESETCONTENTSSIZE )
{
  QQuickPaintedItem * obj = (QQuickPaintedItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->resetContentsSize ();
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
void setAntialiasing(bool enable)
*/
HB_FUNC_STATIC( QQUICKPAINTEDITEM_SETANTIALIASING )
{
  QQuickPaintedItem * obj = (QQuickPaintedItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setAntialiasing ( PBOOL(1) );
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
void setContentsScale(qreal)
*/
HB_FUNC_STATIC( QQUICKPAINTEDITEM_SETCONTENTSSCALE )
{
  QQuickPaintedItem * obj = (QQuickPaintedItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setContentsScale ( PQREAL(1) );
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
void setContentsSize(const QSize &)
*/
HB_FUNC_STATIC( QQUICKPAINTEDITEM_SETCONTENTSSIZE )
{
  QQuickPaintedItem * obj = (QQuickPaintedItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQSIZE(1) )
    {
#endif
      obj->setContentsSize ( *PQSIZE(1) );
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
void setFillColor(const QColor &)
*/
HB_FUNC_STATIC( QQUICKPAINTEDITEM_SETFILLCOLOR )
{
  QQuickPaintedItem * obj = (QQuickPaintedItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && (ISQCOLOR(1)||ISCHAR(1)) )
    {
#endif
      obj->setFillColor ( ISOBJECT(1)? *(QColor *) _qt5xhb_itemGetPtr(1) : QColor(hb_parc(1)) );
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
void setMipmap(bool enable)
*/
HB_FUNC_STATIC( QQUICKPAINTEDITEM_SETMIPMAP )
{
  QQuickPaintedItem * obj = (QQuickPaintedItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setMipmap ( PBOOL(1) );
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
void setOpaquePainting(bool opaque)
*/
HB_FUNC_STATIC( QQUICKPAINTEDITEM_SETOPAQUEPAINTING )
{
  QQuickPaintedItem * obj = (QQuickPaintedItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setOpaquePainting ( PBOOL(1) );
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
void setPerformanceHint(PerformanceHint hint, bool enabled = true)
*/
HB_FUNC_STATIC( QQUICKPAINTEDITEM_SETPERFORMANCEHINT )
{
  QQuickPaintedItem * obj = (QQuickPaintedItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,2) && ISNUM(1) && ISOPTLOG(2) )
    {
#endif
      obj->setPerformanceHint ( (QQuickPaintedItem::PerformanceHint) hb_parni(1), OPBOOL(2,true) );
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
void setPerformanceHints(PerformanceHints hints)
*/
HB_FUNC_STATIC( QQUICKPAINTEDITEM_SETPERFORMANCEHINTS )
{
  QQuickPaintedItem * obj = (QQuickPaintedItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setPerformanceHints ( (QQuickPaintedItem::PerformanceHints) hb_parni(1) );
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
void setRenderTarget(RenderTarget target)
*/
HB_FUNC_STATIC( QQUICKPAINTEDITEM_SETRENDERTARGET )
{
  QQuickPaintedItem * obj = (QQuickPaintedItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setRenderTarget ( (QQuickPaintedItem::RenderTarget) hb_parni(1) );
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
void update(const QRect & rect = QRect())
*/
HB_FUNC_STATIC( QQUICKPAINTEDITEM_UPDATE )
{
  QQuickPaintedItem * obj = (QQuickPaintedItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && (ISQRECT(1)||ISNIL(1)) )
    {
#endif
      obj->update ( ISNIL(1)? QRect() : *(QRect *) _qt5xhb_itemGetPtr(1) );
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
void contentsScaleChanged()
*/
HB_FUNC_STATIC( QQUICKPAINTEDITEM_ONCONTENTSSCALECHANGED )
{
  if( hb_pcount() == 1 )
  {
    QQuickPaintedItem * sender = (QQuickPaintedItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      if( Signals2_connection( sender, "contentsScaleChanged()" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QQuickPaintedItem::contentsScaleChanged, 
                                                              [sender]
                                                              () {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "contentsScaleChanged()" );

          if( cb )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QQUICKPAINTEDITEM" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 1, pSender );
            hb_itemRelease( pSender );
          }

        });

        Signals2_store_connection( sender, "contentsScaleChanged()", connection );

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
  else if( hb_pcount() == 0 )
  {
    QQuickPaintedItem * sender = (QQuickPaintedItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      Signals2_disconnection( sender, "contentsScaleChanged()" );

      QObject::disconnect( Signals2_get_connection( sender, "contentsScaleChanged()" ) );

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
void contentsSizeChanged()
*/
HB_FUNC_STATIC( QQUICKPAINTEDITEM_ONCONTENTSSIZECHANGED )
{
  if( hb_pcount() == 1 )
  {
    QQuickPaintedItem * sender = (QQuickPaintedItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      if( Signals2_connection( sender, "contentsSizeChanged()" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QQuickPaintedItem::contentsSizeChanged, 
                                                              [sender]
                                                              () {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "contentsSizeChanged()" );

          if( cb )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QQUICKPAINTEDITEM" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 1, pSender );
            hb_itemRelease( pSender );
          }

        });

        Signals2_store_connection( sender, "contentsSizeChanged()", connection );

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
  else if( hb_pcount() == 0 )
  {
    QQuickPaintedItem * sender = (QQuickPaintedItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      Signals2_disconnection( sender, "contentsSizeChanged()" );

      QObject::disconnect( Signals2_get_connection( sender, "contentsSizeChanged()" ) );

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
void fillColorChanged()
*/
HB_FUNC_STATIC( QQUICKPAINTEDITEM_ONFILLCOLORCHANGED )
{
  if( hb_pcount() == 1 )
  {
    QQuickPaintedItem * sender = (QQuickPaintedItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      if( Signals2_connection( sender, "fillColorChanged()" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QQuickPaintedItem::fillColorChanged, 
                                                              [sender]
                                                              () {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "fillColorChanged()" );

          if( cb )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QQUICKPAINTEDITEM" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 1, pSender );
            hb_itemRelease( pSender );
          }

        });

        Signals2_store_connection( sender, "fillColorChanged()", connection );

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
  else if( hb_pcount() == 0 )
  {
    QQuickPaintedItem * sender = (QQuickPaintedItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      Signals2_disconnection( sender, "fillColorChanged()" );

      QObject::disconnect( Signals2_get_connection( sender, "fillColorChanged()" ) );

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
void renderTargetChanged()
*/
HB_FUNC_STATIC( QQUICKPAINTEDITEM_ONRENDERTARGETCHANGED )
{
  if( hb_pcount() == 1 )
  {
    QQuickPaintedItem * sender = (QQuickPaintedItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      if( Signals2_connection( sender, "renderTargetChanged()" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QQuickPaintedItem::renderTargetChanged, 
                                                              [sender]
                                                              () {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "renderTargetChanged()" );

          if( cb )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QQUICKPAINTEDITEM" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 1, pSender );
            hb_itemRelease( pSender );
          }

        });

        Signals2_store_connection( sender, "renderTargetChanged()", connection );

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
  else if( hb_pcount() == 0 )
  {
    QQuickPaintedItem * sender = (QQuickPaintedItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      Signals2_disconnection( sender, "renderTargetChanged()" );

      QObject::disconnect( Signals2_get_connection( sender, "renderTargetChanged()" ) );

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
