/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVECTOR3D
REQUEST QVECTOR4D
#endif

CLASS QQuaternion

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD isNull
   METHOD isIdentity
   METHOD vector
   METHOD setVector
   METHOD x
   METHOD y
   METHOD z
   METHOD scalar
   METHOD setX
   METHOD setY
   METHOD setZ
   METHOD setScalar
   METHOD length
   METHOD lengthSquared
   METHOD normalized
   METHOD normalize
   METHOD conjugate
   METHOD rotatedVector
   METHOD toVector4D
   METHOD fromAxisAndAngle
   METHOD slerp
   METHOD nlerp

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QQuaternion
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtGui/QQuaternion>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals4.h"

#ifdef __XHARBOUR__
#include <QtGui/QQuaternion>
#endif

/*
QQuaternion()
*/
void QQuaternion_new1 ()
{
  auto obj = new QQuaternion ();
  _qt5xhb_returnNewObject( obj, true );
}

/*
QQuaternion(float scalar, float xpos, float ypos, float zpos)
*/
void QQuaternion_new2 ()
{
  auto obj = new QQuaternion ( PFLOAT(1), PFLOAT(2), PFLOAT(3), PFLOAT(4) );
  _qt5xhb_returnNewObject( obj, true );
}

/*
QQuaternion(float scalar, const QVector3D& vector)
*/
void QQuaternion_new3 ()
{
  auto obj = new QQuaternion ( PFLOAT(1), *PQVECTOR3D(2) );
  _qt5xhb_returnNewObject( obj, true );
}

/*
QQuaternion(const QVector4D& vector)
*/
void QQuaternion_new4 ()
{
  auto obj = new QQuaternion ( *PQVECTOR4D(1) );
  _qt5xhb_returnNewObject( obj, true );
}

//[1]QQuaternion()
//[2]QQuaternion(float scalar, float xpos, float ypos, float zpos)
//[3]QQuaternion(float scalar, const QVector3D& vector)
//[4]QQuaternion(const QVector4D& vector)

HB_FUNC_STATIC( QQUATERNION_NEW )
{
  if( ISNUMPAR(0) )
  {
    QQuaternion_new1();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QQuaternion_new2();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISOBJECT(2) )
  {
    QQuaternion_new3();
  }
  else if( ISNUMPAR(1) && ISOBJECT(1) )
  {
    QQuaternion_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QQUATERNION_DELETE )
{
  QQuaternion * obj = (QQuaternion *) _qt5xhb_itemGetPtrStackSelfItem();

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
bool isNull() const
*/
HB_FUNC_STATIC( QQUATERNION_ISNULL )
{
  QQuaternion * obj = (QQuaternion *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isNull () );
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
bool isIdentity() const
*/
HB_FUNC_STATIC( QQUATERNION_ISIDENTITY )
{
  QQuaternion * obj = (QQuaternion *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isIdentity () );
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
QVector3D vector() const
*/
HB_FUNC_STATIC( QQUATERNION_VECTOR )
{
  QQuaternion * obj = (QQuaternion *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QVector3D * ptr = new QVector3D( obj->vector () );
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
void setVector(const QVector3D& vector)
*/
void QQuaternion_setVector1 ()
{
  QQuaternion * obj = (QQuaternion *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
      obj->setVector ( *PQVECTOR3D(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setVector(float x, float y, float z)
*/
void QQuaternion_setVector2 ()
{
  QQuaternion * obj = (QQuaternion *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
      obj->setVector ( PFLOAT(1), PFLOAT(2), PFLOAT(3) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void setVector(const QVector3D& vector)
//[2]void setVector(float x, float y, float z)

HB_FUNC_STATIC( QQUATERNION_SETVECTOR )
{
  if( ISNUMPAR(1) && ISQVECTOR3D(1) )
  {
    QQuaternion_setVector1();
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISNUM(3) )
  {
    QQuaternion_setVector2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
float x() const
*/
HB_FUNC_STATIC( QQUATERNION_X )
{
  QQuaternion * obj = (QQuaternion *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RFLOAT( obj->x () );
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
float y() const
*/
HB_FUNC_STATIC( QQUATERNION_Y )
{
  QQuaternion * obj = (QQuaternion *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RFLOAT( obj->y () );
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
float z() const
*/
HB_FUNC_STATIC( QQUATERNION_Z )
{
  QQuaternion * obj = (QQuaternion *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RFLOAT( obj->z () );
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
float scalar() const
*/
HB_FUNC_STATIC( QQUATERNION_SCALAR )
{
  QQuaternion * obj = (QQuaternion *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RFLOAT( obj->scalar () );
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
void setX(float x)
*/
HB_FUNC_STATIC( QQUATERNION_SETX )
{
  QQuaternion * obj = (QQuaternion *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setX ( PFLOAT(1) );
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
void setY(float y)
*/
HB_FUNC_STATIC( QQUATERNION_SETY )
{
  QQuaternion * obj = (QQuaternion *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setY ( PFLOAT(1) );
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
void setZ(float z)
*/
HB_FUNC_STATIC( QQUATERNION_SETZ )
{
  QQuaternion * obj = (QQuaternion *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setZ ( PFLOAT(1) );
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
void setScalar(float scalar)
*/
HB_FUNC_STATIC( QQUATERNION_SETSCALAR )
{
  QQuaternion * obj = (QQuaternion *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setScalar ( PFLOAT(1) );
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
float length() const
*/
HB_FUNC_STATIC( QQUATERNION_LENGTH )
{
  QQuaternion * obj = (QQuaternion *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RFLOAT( obj->length () );
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
float lengthSquared() const
*/
HB_FUNC_STATIC( QQUATERNION_LENGTHSQUARED )
{
  QQuaternion * obj = (QQuaternion *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RFLOAT( obj->lengthSquared () );
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
QQuaternion normalized() const
*/
HB_FUNC_STATIC( QQUATERNION_NORMALIZED )
{
  QQuaternion * obj = (QQuaternion *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QQuaternion * ptr = new QQuaternion( obj->normalized () );
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
void normalize()
*/
HB_FUNC_STATIC( QQUATERNION_NORMALIZE )
{
  QQuaternion * obj = (QQuaternion *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->normalize ();
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
QQuaternion conjugate() const
*/
HB_FUNC_STATIC( QQUATERNION_CONJUGATE )
{
  QQuaternion * obj = (QQuaternion *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QQuaternion * ptr = new QQuaternion( obj->conjugate () );
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
QVector3D rotatedVector(const QVector3D& vector) const
*/
HB_FUNC_STATIC( QQUATERNION_ROTATEDVECTOR )
{
  QQuaternion * obj = (QQuaternion *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQVECTOR3D(1) )
    {
#endif
      QVector3D * ptr = new QVector3D( obj->rotatedVector ( *PQVECTOR3D(1) ) );
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
QVector4D toVector4D() const
*/
HB_FUNC_STATIC( QQUATERNION_TOVECTOR4D )
{
  QQuaternion * obj = (QQuaternion *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QVector4D * ptr = new QVector4D( obj->toVector4D () );
      _qt5xhb_createReturnClass ( ptr, "QVECTOR4D", true );
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
static QQuaternion fromAxisAndAngle(const QVector3D& axis, float angle)
*/
void QQuaternion_fromAxisAndAngle1 ()
{

      QQuaternion * ptr = new QQuaternion( QQuaternion::fromAxisAndAngle ( *PQVECTOR3D(1), PFLOAT(2) ) );
      _qt5xhb_createReturnClass ( ptr, "QQUATERNION", true );
}

/*
static QQuaternion fromAxisAndAngle(float x, float y, float z, float angle)
*/
void QQuaternion_fromAxisAndAngle2 ()
{

      QQuaternion * ptr = new QQuaternion( QQuaternion::fromAxisAndAngle ( PFLOAT(1), PFLOAT(2), PFLOAT(3), PFLOAT(4) ) );
      _qt5xhb_createReturnClass ( ptr, "QQUATERNION", true );
}

//[1]static QQuaternion fromAxisAndAngle(const QVector3D& axis, float angle)
//[2]static QQuaternion fromAxisAndAngle(float x, float y, float z, float angle)

HB_FUNC_STATIC( QQUATERNION_FROMAXISANDANGLE )
{
  if( ISNUMPAR(2) && ISQVECTOR3D(1) && ISNUM(2) )
  {
    QQuaternion_fromAxisAndAngle1();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QQuaternion_fromAxisAndAngle2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QQuaternion slerp(const QQuaternion& q1, const QQuaternion& q2, float t)
*/
HB_FUNC_STATIC( QQUATERNION_SLERP )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(3) && ISQQUATERNION(1) && ISQQUATERNION(2) && ISNUM(3) )
  {
#endif
      QQuaternion * ptr = new QQuaternion( QQuaternion::slerp ( *PQQUATERNION(1), *PQQUATERNION(2), PFLOAT(3) ) );
      _qt5xhb_createReturnClass ( ptr, "QQUATERNION", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static QQuaternion nlerp(const QQuaternion& q1, const QQuaternion& q2, float t)
*/
HB_FUNC_STATIC( QQUATERNION_NLERP )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(3) && ISQQUATERNION(1) && ISQQUATERNION(2) && ISNUM(3) )
  {
#endif
      QQuaternion * ptr = new QQuaternion( QQuaternion::nlerp ( *PQQUATERNION(1), *PQQUATERNION(2), PFLOAT(3) ) );
      _qt5xhb_createReturnClass ( ptr, "QQUATERNION", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

HB_FUNC_STATIC( QQUATERNION_NEWFROM )
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

HB_FUNC_STATIC( QQUATERNION_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QQUATERNION_NEWFROM );
}

HB_FUNC_STATIC( QQUATERNION_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QQUATERNION_NEWFROM );
}

HB_FUNC_STATIC( QQUATERNION_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QQUATERNION_SETSELFDESTRUCTION )
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
