/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QQUATERNION
REQUEST QVECTOR3D
#endif

CLASS QCustom3DItem INHERIT QObject

   METHOD new
   METHOD delete
   METHOD meshFile
   METHOD setMeshFile
   METHOD textureFile
   METHOD setTextureFile
   METHOD position
   METHOD setPosition
   METHOD isPositionAbsolute
   METHOD setPositionAbsolute
   METHOD scaling
   METHOD setScaling
   METHOD rotation
   METHOD setRotation
   METHOD isVisible
   METHOD setVisible
   METHOD isShadowCasting
   METHOD setShadowCasting
   METHOD isScalingAbsolute
   METHOD setScalingAbsolute
   METHOD setRotationAxisAndAngle
   METHOD setTextureImage

   METHOD onMeshFileChanged
   METHOD onPositionAbsoluteChanged
   METHOD onPositionChanged
   METHOD onRotationChanged
   METHOD onScalingAbsoluteChanged
   METHOD onScalingChanged
   METHOD onShadowCastingChanged
   METHOD onTextureFileChanged
   METHOD onVisibleChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QCustom3DItem
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QCustom3DItem>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QCustom3DItem>
#endif

using namespace QtDataVisualization;

/*
explicit QCustom3DItem(QObject *parent = Q_NULLPTR)
*/
void QCustom3DItem_new1 ()
{
  QCustom3DItem * o = new QCustom3DItem ( OPQOBJECT(1,Q_NULLPTR) );
  _qt5xhb_returnNewObject( o, false );
}

/*
explicit QCustom3DItem(const QString &meshFile, const QVector3D &position, const QVector3D &scaling, const QQuaternion &rotation, const QImage &texture, QObject *parent = Q_NULLPTR)
*/
void QCustom3DItem_new2 ()
{
  QCustom3DItem * o = new QCustom3DItem ( PQSTRING(1), *PQVECTOR3D(2), *PQVECTOR3D(3), *PQQUATERNION(4), *PQIMAGE(5), OPQOBJECT(6,Q_NULLPTR) );
  _qt5xhb_returnNewObject( o, false );
}

/*
QCustom3DItem(QCustom3DItemPrivate *d, QObject *parent = Q_NULLPTR) [protected]
*/

//[1]explicit QCustom3DItem(QObject *parent = Q_NULLPTR)
//[2]explicit QCustom3DItem(const QString &meshFile, const QVector3D &position, const QVector3D &scaling, const QQuaternion &rotation, const QImage &texture, QObject *parent = Q_NULLPTR)

HB_FUNC_STATIC( QCUSTOM3DITEM_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QCustom3DItem_new1();
  }
  else if( ISBETWEEN(5,6) && ISCHAR(1) && ISQVECTOR3D(2) && ISQVECTOR3D(3) && ISQQUATERNION(4) && ISQIMAGE(5) && (ISQOBJECT(6)||ISNIL(6)) )
  {
    QCustom3DItem_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
virtual ~QCustom3DItem()
*/
HB_FUNC_STATIC( QCUSTOM3DITEM_DELETE )
{
  QCustom3DItem * obj = (QCustom3DItem *) _qt5xhb_itemGetPtrStackSelfItem();

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
QString meshFile() const
*/
HB_FUNC_STATIC( QCUSTOM3DITEM_MESHFILE )
{
  QCustom3DItem * obj = (QCustom3DItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->meshFile () );
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
void setMeshFile(const QString &meshFile)
*/
HB_FUNC_STATIC( QCUSTOM3DITEM_SETMESHFILE )
{
  QCustom3DItem * obj = (QCustom3DItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      obj->setMeshFile ( PQSTRING(1) );
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
QString textureFile() const
*/
HB_FUNC_STATIC( QCUSTOM3DITEM_TEXTUREFILE )
{
  QCustom3DItem * obj = (QCustom3DItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->textureFile () );
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
void setTextureFile(const QString &textureFile)
*/
HB_FUNC_STATIC( QCUSTOM3DITEM_SETTEXTUREFILE )
{
  QCustom3DItem * obj = (QCustom3DItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      obj->setTextureFile ( PQSTRING(1) );
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
QVector3D position() const
*/
HB_FUNC_STATIC( QCUSTOM3DITEM_POSITION )
{
  QCustom3DItem * obj = (QCustom3DItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QVector3D * ptr = new QVector3D( obj->position () );
      _qt5xhb_createReturnClass ( ptr, "QVECTOR3D", true );
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
void setPosition(const QVector3D &position)
*/
HB_FUNC_STATIC( QCUSTOM3DITEM_SETPOSITION )
{
  QCustom3DItem * obj = (QCustom3DItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQVECTOR3D(1) )
    {
#endif
      obj->setPosition ( *PQVECTOR3D(1) );
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
bool isPositionAbsolute() const
*/
HB_FUNC_STATIC( QCUSTOM3DITEM_ISPOSITIONABSOLUTE )
{
  QCustom3DItem * obj = (QCustom3DItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isPositionAbsolute () );
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
void setPositionAbsolute(bool positionAbsolute)
*/
HB_FUNC_STATIC( QCUSTOM3DITEM_SETPOSITIONABSOLUTE )
{
  QCustom3DItem * obj = (QCustom3DItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setPositionAbsolute ( PBOOL(1) );
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
QVector3D scaling() const
*/
HB_FUNC_STATIC( QCUSTOM3DITEM_SCALING )
{
  QCustom3DItem * obj = (QCustom3DItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QVector3D * ptr = new QVector3D( obj->scaling () );
      _qt5xhb_createReturnClass ( ptr, "QVECTOR3D", true );
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
void setScaling(const QVector3D &scaling)
*/
HB_FUNC_STATIC( QCUSTOM3DITEM_SETSCALING )
{
  QCustom3DItem * obj = (QCustom3DItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQVECTOR3D(1) )
    {
#endif
      obj->setScaling ( *PQVECTOR3D(1) );
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
QQuaternion rotation()
*/
HB_FUNC_STATIC( QCUSTOM3DITEM_ROTATION )
{
  QCustom3DItem * obj = (QCustom3DItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QQuaternion * ptr = new QQuaternion( obj->rotation () );
      _qt5xhb_createReturnClass ( ptr, "QQUATERNION", true );
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
void setRotation(const QQuaternion &rotation)
*/
HB_FUNC_STATIC( QCUSTOM3DITEM_SETROTATION )
{
  QCustom3DItem * obj = (QCustom3DItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQQUATERNION(1) )
    {
#endif
      obj->setRotation ( *PQQUATERNION(1) );
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
bool isVisible() const
*/
HB_FUNC_STATIC( QCUSTOM3DITEM_ISVISIBLE )
{
  QCustom3DItem * obj = (QCustom3DItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isVisible () );
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
void setVisible(bool visible)
*/
HB_FUNC_STATIC( QCUSTOM3DITEM_SETVISIBLE )
{
  QCustom3DItem * obj = (QCustom3DItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setVisible ( PBOOL(1) );
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
bool isShadowCasting() const
*/
HB_FUNC_STATIC( QCUSTOM3DITEM_ISSHADOWCASTING )
{
  QCustom3DItem * obj = (QCustom3DItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isShadowCasting () );
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
void setShadowCasting(bool enabled)
*/
HB_FUNC_STATIC( QCUSTOM3DITEM_SETSHADOWCASTING )
{
  QCustom3DItem * obj = (QCustom3DItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setShadowCasting ( PBOOL(1) );
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
bool isScalingAbsolute() const
*/
HB_FUNC_STATIC( QCUSTOM3DITEM_ISSCALINGABSOLUTE )
{
  QCustom3DItem * obj = (QCustom3DItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isScalingAbsolute () );
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
void setScalingAbsolute(bool scalingAbsolute)
*/
HB_FUNC_STATIC( QCUSTOM3DITEM_SETSCALINGABSOLUTE )
{
  QCustom3DItem * obj = (QCustom3DItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setScalingAbsolute ( PBOOL(1) );
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
Q_INVOKABLE void setRotationAxisAndAngle(const QVector3D &axis, float angle)
*/
HB_FUNC_STATIC( QCUSTOM3DITEM_SETROTATIONAXISANDANGLE )
{
  QCustom3DItem * obj = (QCustom3DItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISQVECTOR3D(1) && ISNUM(2) )
    {
#endif
      obj->setRotationAxisAndAngle ( *PQVECTOR3D(1), PFLOAT(2) );
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
void setTextureImage(const QImage &textureImage)
*/
HB_FUNC_STATIC( QCUSTOM3DITEM_SETTEXTUREIMAGE )
{
  QCustom3DItem * obj = (QCustom3DItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQIMAGE(1) )
    {
#endif
      obj->setTextureImage ( *PQIMAGE(1) );
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

void QCustom3DItemSlots_connect_signal ( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QCUSTOM3DITEM_ONMESHFILECHANGED )
{
  QCustom3DItemSlots_connect_signal( "meshFileChanged(QString)", "meshFileChanged(QString)" );
}

HB_FUNC_STATIC( QCUSTOM3DITEM_ONPOSITIONABSOLUTECHANGED )
{
  QCustom3DItemSlots_connect_signal( "positionAbsoluteChanged(bool)", "positionAbsoluteChanged(bool)" );
}

HB_FUNC_STATIC( QCUSTOM3DITEM_ONPOSITIONCHANGED )
{
  QCustom3DItemSlots_connect_signal( "positionChanged(QVector3D)", "positionChanged(QVector3D)" );
}

HB_FUNC_STATIC( QCUSTOM3DITEM_ONROTATIONCHANGED )
{
  QCustom3DItemSlots_connect_signal( "rotationChanged(QQuaternion)", "rotationChanged(QQuaternion)" );
}

HB_FUNC_STATIC( QCUSTOM3DITEM_ONSCALINGABSOLUTECHANGED )
{
  QCustom3DItemSlots_connect_signal( "scalingAbsoluteChanged(bool)", "scalingAbsoluteChanged(bool)" );
}

HB_FUNC_STATIC( QCUSTOM3DITEM_ONSCALINGCHANGED )
{
  QCustom3DItemSlots_connect_signal( "scalingChanged(QVector3D)", "scalingChanged(QVector3D)" );
}

HB_FUNC_STATIC( QCUSTOM3DITEM_ONSHADOWCASTINGCHANGED )
{
  QCustom3DItemSlots_connect_signal( "shadowCastingChanged(bool)", "shadowCastingChanged(bool)" );
}

HB_FUNC_STATIC( QCUSTOM3DITEM_ONTEXTUREFILECHANGED )
{
  QCustom3DItemSlots_connect_signal( "textureFileChanged(QString)", "textureFileChanged(QString)" );
}

HB_FUNC_STATIC( QCUSTOM3DITEM_ONVISIBLECHANGED )
{
  QCustom3DItemSlots_connect_signal( "visibleChanged(bool)", "visibleChanged(bool)" );
}

#pragma ENDDUMP
