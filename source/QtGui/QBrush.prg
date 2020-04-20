/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QCOLOR
REQUEST QGRADIENT
REQUEST QIMAGE
REQUEST QMATRIX
REQUEST QPIXMAP
REQUEST QTRANSFORM
#endif

CLASS QBrush

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD color
   METHOD gradient
   METHOD isOpaque
   METHOD matrix
   METHOD setColor
   METHOD setMatrix
   METHOD setStyle
   METHOD setTexture
   METHOD setTextureImage
   METHOD setTransform
   METHOD style
   METHOD texture
   METHOD textureImage
   METHOD transform
   METHOD toVariant
   METHOD fromVariant

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QBrush
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtGui/QBrush>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals4.h"

#ifdef __XHARBOUR__
#include <QtGui/QBrush>
#endif

#include <QtCore/QVariant>

/*
QBrush ()
*/
void QBrush_new1()
{
  auto obj = new QBrush();
  Qt5xHb::returnNewObject( obj, true );
}

/*
QBrush ( Qt::BrushStyle style )
*/
void QBrush_new2()
{
  auto obj = new QBrush( (Qt::BrushStyle) hb_parni(1) );
  Qt5xHb::returnNewObject( obj, true );
}

/*
QBrush ( const QColor & color, Qt::BrushStyle style = Qt::SolidPattern )
*/
void QBrush_new3()
{
  auto obj = new QBrush( ISOBJECT(1)? *(QColor *) Qt5xHb::itemGetPtr(1) : QColor(hb_parc(1)), ISNIL(2)? (Qt::BrushStyle) Qt::SolidPattern : (Qt::BrushStyle) hb_parni(2) );
  Qt5xHb::returnNewObject( obj, true );
}

/*
QBrush ( Qt::GlobalColor color, Qt::BrushStyle style = Qt::SolidPattern )
*/
void QBrush_new4()
{
  auto obj = new QBrush( (Qt::GlobalColor) hb_parni(1), ISNIL(2)? (Qt::BrushStyle) Qt::SolidPattern : (Qt::BrushStyle) hb_parni(2) );
  Qt5xHb::returnNewObject( obj, true );
}

/*
QBrush ( const QColor & color, const QPixmap & pixmap )
*/
void QBrush_new5()
{
  auto obj = new QBrush( ISOBJECT(1)? *(QColor *) Qt5xHb::itemGetPtr(1) : QColor(hb_parc(1)), *PQPIXMAP(2) );
  Qt5xHb::returnNewObject( obj, true );
}

/*
QBrush ( Qt::GlobalColor color, const QPixmap & pixmap )
*/
void QBrush_new6()
{
  auto obj = new QBrush( (Qt::GlobalColor) hb_parni(1), *PQPIXMAP(2) );
  Qt5xHb::returnNewObject( obj, true );
}

/*
QBrush ( const QPixmap & pixmap )
*/
void QBrush_new7()
{
  auto obj = new QBrush( *PQPIXMAP(1) );
  Qt5xHb::returnNewObject( obj, true );
}

/*
QBrush ( const QImage & image )
*/
void QBrush_new8()
{
  auto obj = new QBrush( *PQIMAGE(1) );
  Qt5xHb::returnNewObject( obj, true );
}

/*
QBrush ( const QBrush & other )
*/
void QBrush_new9()
{
  auto obj = new QBrush( *PQBRUSH(1) );
  Qt5xHb::returnNewObject( obj, true );
}

/*
QBrush ( const QGradient & gradient )
*/
void QBrush_new10()
{
  auto obj = new QBrush( *PQGRADIENT(1) );
  Qt5xHb::returnNewObject( obj, true );
}

/*
[ 1]QBrush ()
[ 2]QBrush ( Qt::BrushStyle style )
[ 3]QBrush ( const QColor & color, Qt::BrushStyle style = Qt::SolidPattern )
[ 4]QBrush ( Qt::GlobalColor color, Qt::BrushStyle style = Qt::SolidPattern )
[ 5]QBrush ( const QColor & color, const QPixmap & pixmap )
[ 6]QBrush ( Qt::GlobalColor color, const QPixmap & pixmap )
[ 7]QBrush ( const QPixmap & pixmap )
[ 8]QBrush ( const QImage & image )
[ 9]QBrush ( const QBrush & other )
[10]QBrush ( const QGradient & gradient )
*/

HB_FUNC_STATIC( QBRUSH_NEW )
{
  if( ISNUMPAR(0) )
  {
    QBrush_new1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QBrush_new2();
  }
  else if( ISBETWEEN(1,2) && (ISQCOLOR(1)||ISCHAR(1)) && ISOPTNUM(2) )
  {
    QBrush_new3();
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && ISOPTNUM(2) )
  {
    QBrush_new4();
  }
  else if( ISNUMPAR(2) && (ISQCOLOR(1)||ISCHAR(1)) && ISQPIXMAP(2) )
  {
    QBrush_new5();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISQPIXMAP(2) )
  {
    QBrush_new6();
  }
  else if( ISNUMPAR(1) && ISQPIXMAP(1) )
  {
    QBrush_new7();
  }
  else if( ISNUMPAR(1) && ISQIMAGE(1) )
  {
    QBrush_new8();
  }
  else if( ISNUMPAR(1) && ISQBRUSH(1) )
  {
    QBrush_new9();
  }
  else if( ISNUMPAR(1) && ISQGRADIENT(1) )
  {
    QBrush_new10();
  }
  else if( ISNUMPAR(1) && ISQCONICALGRADIENT(1) )
  {
    QBrush_new10();
  }
  else if( ISNUMPAR(1) && ISQLINEARGRADIENT(1) )
  {
    QBrush_new10();
  }
  else if( ISNUMPAR(1) && ISQRADIALGRADIENT(1) )
  {
    QBrush_new10();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QBRUSH_DELETE )
{
  auto obj = (QBrush *) Qt5xHb::itemGetPtrStackSelfItem();

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
const QColor & color () const
*/
HB_FUNC_STATIC( QBRUSH_COLOR )
{
  auto obj = (QBrush *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      const QColor * ptr = &obj->color();
      Qt5xHb::createReturnClass( ptr, "QCOLOR", false );
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
const QGradient * gradient () const
*/
HB_FUNC_STATIC( QBRUSH_GRADIENT )
{
  auto obj = (QBrush *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      const QGradient * ptr = obj->gradient();
      Qt5xHb::createReturnClass( ptr, "QGRADIENT", false );
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
bool isOpaque () const
*/
HB_FUNC_STATIC( QBRUSH_ISOPAQUE )
{
  auto obj = (QBrush *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isOpaque() );
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
const QMatrix & matrix () const // TODO: revisar e corrigir(?)
*/
HB_FUNC_STATIC( QBRUSH_MATRIX )
{
  auto obj = (QBrush *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      const QMatrix * ptr = &obj->matrix();
      Qt5xHb::createReturnClass( ptr, "QMATRIX", false );
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
void setColor ( const QColor & color )
*/
void QBrush_setColor1()
{
  auto obj = (QBrush *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    obj->setColor( ISOBJECT(1)? *(QColor *) Qt5xHb::itemGetPtr(1) : QColor(hb_parc(1)) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setColor ( Qt::GlobalColor color )
*/
void QBrush_setColor2()
{
  auto obj = (QBrush *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    obj->setColor( (Qt::GlobalColor) hb_parni(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
[1]void setColor ( const QColor & color )
[2]void setColor ( Qt::GlobalColor color )
*/

HB_FUNC_STATIC( QBRUSH_SETCOLOR )
{
  if( ISNUMPAR(1) && (ISQCOLOR(1)||ISCHAR(1)) )
  {
    QBrush_setColor1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QBrush_setColor2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setMatrix ( const QMatrix & matrix )
*/
HB_FUNC_STATIC( QBRUSH_SETMATRIX )
{
  auto obj = (QBrush *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQMATRIX(1) )
    {
#endif
      obj->setMatrix( *PQMATRIX(1) );
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
void setStyle ( Qt::BrushStyle style )
*/
HB_FUNC_STATIC( QBRUSH_SETSTYLE )
{
  auto obj = (QBrush *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setStyle( (Qt::BrushStyle) hb_parni(1) );
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
void setTexture ( const QPixmap & pixmap )
*/
HB_FUNC_STATIC( QBRUSH_SETTEXTURE )
{
  auto obj = (QBrush *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQPIXMAP(1) )
    {
#endif
      obj->setTexture( *PQPIXMAP(1) );
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
void setTextureImage ( const QImage & image )
*/
HB_FUNC_STATIC( QBRUSH_SETTEXTUREIMAGE )
{
  auto obj = (QBrush *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQIMAGE(1) )
    {
#endif
      obj->setTextureImage( *PQIMAGE(1) );
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
void setTransform ( const QTransform & matrix )
*/
HB_FUNC_STATIC( QBRUSH_SETTRANSFORM )
{
  auto obj = (QBrush *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQTRANSFORM(1) )
    {
#endif
      obj->setTransform( *PQTRANSFORM(1) );
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
Qt::BrushStyle style () const
*/
HB_FUNC_STATIC( QBRUSH_STYLE )
{
  auto obj = (QBrush *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->style() );
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
QPixmap texture () const
*/
HB_FUNC_STATIC( QBRUSH_TEXTURE )
{
  auto obj = (QBrush *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QPixmap( obj->texture() );
      Qt5xHb::createReturnClass( ptr, "QPIXMAP", true );
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
QImage textureImage () const
*/
HB_FUNC_STATIC( QBRUSH_TEXTUREIMAGE )
{
  auto obj = (QBrush *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QImage( obj->textureImage() );
      Qt5xHb::createReturnClass( ptr, "QIMAGE", true );
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
QTransform transform () const
*/
HB_FUNC_STATIC( QBRUSH_TRANSFORM )
{
  auto obj = (QBrush *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QTransform( obj->transform() );
      Qt5xHb::createReturnClass( ptr, "QTRANSFORM", true );
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
QVariant toVariant()
*/
void QBrush_toVariant1()
{
  auto obj = (QBrush *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    QVariant * variant = new QVariant();
    variant->setValue<QBrush>( *obj );
    Qt5xHb::createReturnClass( variant, "QVARIANT", true );
  }
}

/*
static QVariant toVariant( const QBrush & )
*/
void QBrush_toVariant2()
{
  QBrush * brush = (QBrush *) hb_itemGetPtr( hb_objSendMsg( hb_param( 1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QVariant * variant = new QVariant();
  variant->setValue<QBrush>( *brush );
  Qt5xHb::createReturnClass( variant, "QVARIANT", true );
}

//[1]QVariant toVariant()
//[2]static QVariant toVariant( const QBrush & )

HB_FUNC_STATIC( QBRUSH_TOVARIANT )
{
  if( ISNUMPAR(0) )
  {
    QBrush_toVariant1();
  }
  else if( ISNUMPAR(1) && ISQBRUSH(1) )
  {
    QBrush_toVariant2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QBrush fromVariant( const QVariant & )
*/
HB_FUNC_STATIC( QBRUSH_FROMVARIANT )
{
  if( ISNUMPAR(1) && ISQVARIANT(1) )
  {
    QVariant * variant = (QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_param( 1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QBrush * brush = new QBrush( variant->value<QBrush>() );
    Qt5xHb::createReturnClass( brush, "QBRUSH", true );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QBRUSH_NEWFROM )
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

HB_FUNC_STATIC( QBRUSH_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QBRUSH_NEWFROM );
}

HB_FUNC_STATIC( QBRUSH_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QBRUSH_NEWFROM );
}

HB_FUNC_STATIC( QBRUSH_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QBRUSH_SETSELFDESTRUCTION )
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
