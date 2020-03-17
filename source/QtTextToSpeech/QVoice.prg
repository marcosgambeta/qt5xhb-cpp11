/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QVoice

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD name
   METHOD gender
   METHOD age
   METHOD genderName
   METHOD ageName

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QVoice
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
#include <QtTextToSpeech/QVoice>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals4.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
#include <QtTextToSpeech/QVoice>
#endif
#endif

/*
QVoice()
*/
void QVoice_new1 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  auto obj = new QVoice ();
  _qt5xhb_returnNewObject( obj, true );
#endif
}

/*
QVoice(const QVoice &other)
*/
void QVoice_new2 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  auto obj = new QVoice ( *PQVOICE(1) );
  _qt5xhb_returnNewObject( obj, true );
#endif
}

/*
QVoice(const QString &name, Gender gender, Age age, const QVariant &data) [private]
*/

//[1]QVoice()
//[2]QVoice(const QVoice &other)
//[3]QVoice(const QString &name, Gender gender, Age age, const QVariant &data) [private]

HB_FUNC_STATIC( QVOICE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QVoice_new1();
  }
  else if( ISNUMPAR(1) && ISQVOICE(1) )
  {
    QVoice_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
~QVoice()
*/
HB_FUNC_STATIC( QVOICE_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  auto obj = (QVoice *) _qt5xhb_itemGetPtrStackSelfItem();

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
#endif
}

/*
QString name() const
*/
HB_FUNC_STATIC( QVOICE_NAME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  auto obj = (QVoice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->name () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
Gender gender() const
*/
HB_FUNC_STATIC( QVOICE_GENDER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  auto obj = (QVoice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->gender () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
Age age() const
*/
HB_FUNC_STATIC( QVOICE_AGE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  auto obj = (QVoice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->age () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
static QString genderName(QVoice::Gender gender)
*/
HB_FUNC_STATIC( QVOICE_GENDERNAME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && ISNUM(1) )
  {
#endif
    RQSTRING( QVoice::genderName ( (QVoice::Gender) hb_parni(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
#endif
}

/*
static QString ageName(QVoice::Age age)
*/
HB_FUNC_STATIC( QVOICE_AGENAME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && ISNUM(1) )
  {
#endif
    RQSTRING( QVoice::ageName ( (QVoice::Age) hb_parni(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
#endif
}

/*
void setName(const QString &name) [private]
*/

/*
void setGender(Gender gender) [private]
*/

/*
void setAge(Age age) [private]
*/

/*
void setData(const QVariant &data) [private]
*/

/*
QVariant data() const [private]
*/

HB_FUNC_STATIC( QVOICE_NEWFROM )
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

HB_FUNC_STATIC( QVOICE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QVOICE_NEWFROM );
}

HB_FUNC_STATIC( QVOICE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QVOICE_NEWFROM );
}

HB_FUNC_STATIC( QVOICE_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QVOICE_SETSELFDESTRUCTION )
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
