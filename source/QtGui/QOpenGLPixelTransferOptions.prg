/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QOpenGLPixelTransferOptions

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD swap
   METHOD setAlignment
   METHOD alignment
   METHOD setSkipImages
   METHOD skipImages
   METHOD setSkipRows
   METHOD skipRows
   METHOD setSkipPixels
   METHOD skipPixels
   METHOD setImageHeight
   METHOD imageHeight
   METHOD setRowLength
   METHOD rowLength
   METHOD setLeastSignificantByteFirst
   METHOD isLeastSignificantBitFirst
   METHOD setSwapBytesEnabled
   METHOD isSwapBytesEnabled

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QOpenGLPixelTransferOptions
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtGui/QOpenGLPixelTransferOptions>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals3.h"

#ifdef __XHARBOUR__
#include <QtGui/QOpenGLPixelTransferOptions>
#endif

/*
QOpenGLPixelTransferOptions()
*/
void QOpenGLPixelTransferOptions_new1 ()
{
  QOpenGLPixelTransferOptions * o = new QOpenGLPixelTransferOptions ();
  _qt5xhb_returnNewObject( o, true );
}

/*
QOpenGLPixelTransferOptions(const QOpenGLPixelTransferOptions &)
*/
void QOpenGLPixelTransferOptions_new2 ()
{
  QOpenGLPixelTransferOptions * o = new QOpenGLPixelTransferOptions ( *PQOPENGLPIXELTRANSFEROPTIONS(1) );
  _qt5xhb_returnNewObject( o, true );
}

//[1]QOpenGLPixelTransferOptions()
//[2]QOpenGLPixelTransferOptions(const QOpenGLPixelTransferOptions &)

HB_FUNC_STATIC( QOPENGLPIXELTRANSFEROPTIONS_NEW )
{
  if( ISNUMPAR(0) )
  {
    QOpenGLPixelTransferOptions_new1();
  }
  else if( ISNUMPAR(1) && ISQOPENGLPIXELTRANSFEROPTIONS(1) )
  {
    QOpenGLPixelTransferOptions_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QOPENGLPIXELTRANSFEROPTIONS_DELETE )
{
  QOpenGLPixelTransferOptions * obj = (QOpenGLPixelTransferOptions *) _qt5xhb_itemGetPtrStackSelfItem();

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
void swap(QOpenGLPixelTransferOptions &other)
*/
HB_FUNC_STATIC( QOPENGLPIXELTRANSFEROPTIONS_SWAP )
{
  QOpenGLPixelTransferOptions * obj = (QOpenGLPixelTransferOptions *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQOPENGLPIXELTRANSFEROPTIONS(1) )
    {
#endif
      obj->swap ( *PQOPENGLPIXELTRANSFEROPTIONS(1) );
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
void setAlignment(int alignment)
*/
HB_FUNC_STATIC( QOPENGLPIXELTRANSFEROPTIONS_SETALIGNMENT )
{
  QOpenGLPixelTransferOptions * obj = (QOpenGLPixelTransferOptions *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setAlignment ( PINT(1) );
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
int alignment() const
*/
HB_FUNC_STATIC( QOPENGLPIXELTRANSFEROPTIONS_ALIGNMENT )
{
  QOpenGLPixelTransferOptions * obj = (QOpenGLPixelTransferOptions *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->alignment () );
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
void setSkipImages(int skipImages)
*/
HB_FUNC_STATIC( QOPENGLPIXELTRANSFEROPTIONS_SETSKIPIMAGES )
{
  QOpenGLPixelTransferOptions * obj = (QOpenGLPixelTransferOptions *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setSkipImages ( PINT(1) );
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
int skipImages() const
*/
HB_FUNC_STATIC( QOPENGLPIXELTRANSFEROPTIONS_SKIPIMAGES )
{
  QOpenGLPixelTransferOptions * obj = (QOpenGLPixelTransferOptions *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->skipImages () );
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
void setSkipRows(int skipRows)
*/
HB_FUNC_STATIC( QOPENGLPIXELTRANSFEROPTIONS_SETSKIPROWS )
{
  QOpenGLPixelTransferOptions * obj = (QOpenGLPixelTransferOptions *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setSkipRows ( PINT(1) );
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
int skipRows() const
*/
HB_FUNC_STATIC( QOPENGLPIXELTRANSFEROPTIONS_SKIPROWS )
{
  QOpenGLPixelTransferOptions * obj = (QOpenGLPixelTransferOptions *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->skipRows () );
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
void setSkipPixels(int skipPixels)
*/
HB_FUNC_STATIC( QOPENGLPIXELTRANSFEROPTIONS_SETSKIPPIXELS )
{
  QOpenGLPixelTransferOptions * obj = (QOpenGLPixelTransferOptions *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setSkipPixels ( PINT(1) );
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
int skipPixels() const
*/
HB_FUNC_STATIC( QOPENGLPIXELTRANSFEROPTIONS_SKIPPIXELS )
{
  QOpenGLPixelTransferOptions * obj = (QOpenGLPixelTransferOptions *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->skipPixels () );
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
void setImageHeight(int imageHeight)
*/
HB_FUNC_STATIC( QOPENGLPIXELTRANSFEROPTIONS_SETIMAGEHEIGHT )
{
  QOpenGLPixelTransferOptions * obj = (QOpenGLPixelTransferOptions *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setImageHeight ( PINT(1) );
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
int imageHeight() const
*/
HB_FUNC_STATIC( QOPENGLPIXELTRANSFEROPTIONS_IMAGEHEIGHT )
{
  QOpenGLPixelTransferOptions * obj = (QOpenGLPixelTransferOptions *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->imageHeight () );
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
void setRowLength(int rowLength)
*/
HB_FUNC_STATIC( QOPENGLPIXELTRANSFEROPTIONS_SETROWLENGTH )
{
  QOpenGLPixelTransferOptions * obj = (QOpenGLPixelTransferOptions *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setRowLength ( PINT(1) );
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
int rowLength() const
*/
HB_FUNC_STATIC( QOPENGLPIXELTRANSFEROPTIONS_ROWLENGTH )
{
  QOpenGLPixelTransferOptions * obj = (QOpenGLPixelTransferOptions *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->rowLength () );
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
void setLeastSignificantByteFirst(bool lsbFirst)
*/
HB_FUNC_STATIC( QOPENGLPIXELTRANSFEROPTIONS_SETLEASTSIGNIFICANTBYTEFIRST )
{
  QOpenGLPixelTransferOptions * obj = (QOpenGLPixelTransferOptions *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setLeastSignificantByteFirst ( PBOOL(1) );
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
bool isLeastSignificantBitFirst() const
*/
HB_FUNC_STATIC( QOPENGLPIXELTRANSFEROPTIONS_ISLEASTSIGNIFICANTBITFIRST )
{
  QOpenGLPixelTransferOptions * obj = (QOpenGLPixelTransferOptions *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isLeastSignificantBitFirst () );
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
void setSwapBytesEnabled(bool swapBytes)
*/
HB_FUNC_STATIC( QOPENGLPIXELTRANSFEROPTIONS_SETSWAPBYTESENABLED )
{
  QOpenGLPixelTransferOptions * obj = (QOpenGLPixelTransferOptions *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setSwapBytesEnabled ( PBOOL(1) );
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
bool isSwapBytesEnabled() const
*/
HB_FUNC_STATIC( QOPENGLPIXELTRANSFEROPTIONS_ISSWAPBYTESENABLED )
{
  QOpenGLPixelTransferOptions * obj = (QOpenGLPixelTransferOptions *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isSwapBytesEnabled () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

HB_FUNC_STATIC( QOPENGLPIXELTRANSFEROPTIONS_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QOPENGLPIXELTRANSFEROPTIONS_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QOPENGLPIXELTRANSFEROPTIONS_NEWFROM );
}

HB_FUNC_STATIC( QOPENGLPIXELTRANSFEROPTIONS_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QOPENGLPIXELTRANSFEROPTIONS_NEWFROM );
}

HB_FUNC_STATIC( QOPENGLPIXELTRANSFEROPTIONS_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QOPENGLPIXELTRANSFEROPTIONS_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

#pragma ENDDUMP
