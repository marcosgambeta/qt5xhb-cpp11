/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QABSTRACT3DAXIS
REQUEST QBAR3DSERIES
REQUEST QCATEGORY3DAXIS
REQUEST QSIZEF
REQUEST QVALUE3DAXIS
#endif

CLASS Q3DBars INHERIT QAbstract3DGraph

   METHOD new
   METHOD delete
   METHOD isMultiSeriesUniform
   METHOD setMultiSeriesUniform
   METHOD barThickness
   METHOD setBarThickness
   METHOD barSpacing
   METHOD setBarSpacing
   METHOD isBarSpacingRelative
   METHOD setBarSpacingRelative
   METHOD rowAxis
   METHOD setRowAxis
   METHOD columnAxis
   METHOD setColumnAxis
   METHOD valueAxis
   METHOD setValueAxis
   METHOD primarySeries
   METHOD setPrimarySeries
   METHOD selectedSeries
   METHOD floorLevel
   METHOD setFloorLevel
   METHOD addSeries
   METHOD removeSeries
   METHOD insertSeries
   METHOD seriesList
   METHOD addAxis
   METHOD releaseAxis
   METHOD axes

   METHOD onMultiSeriesUniformChanged
   METHOD onBarThicknessChanged
   METHOD onBarSpacingChanged
   METHOD onBarSpacingRelativeChanged
   METHOD onRowAxisChanged
   METHOD onColumnAxisChanged
   METHOD onValueAxisChanged
   METHOD onPrimarySeriesChanged
   METHOD onSelectedSeriesChanged
   METHOD onFloorLevelChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS Q3DBars
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QtDataVisualization/Q3DBars>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QtDataVisualization/Q3DBars>
#endif
#endif

using namespace QtDataVisualization;

/*
explicit Q3DBars(const QSurfaceFormat *format = nullptr, QWindow *parent = nullptr)
*/
HB_FUNC_STATIC( Q3DBARS_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  if( ISBETWEEN(0,2) && (ISQSURFACEFORMAT(1)||ISNIL(1)) && (ISQWINDOW(2)||ISNIL(2)) )
  {
    auto obj = new Q3DBars( ISNIL(1)? nullptr : (QSurfaceFormat *) Qt5xHb::itemGetPtr(1), OPQWINDOW(2,nullptr) );
    Qt5xHb::returnNewObject( obj, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
virtual ~Q3DBars()
*/
HB_FUNC_STATIC( Q3DBARS_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (Q3DBars *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    Qt5xHb::Events_disconnect_all_events( obj, true );
    Signals_disconnect_all_signals( obj, true );
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
bool isMultiSeriesUniform() const
*/
HB_FUNC_STATIC( Q3DBARS_ISMULTISERIESUNIFORM )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (Q3DBars *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isMultiSeriesUniform() );
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
void setMultiSeriesUniform(bool uniform)
*/
HB_FUNC_STATIC( Q3DBARS_SETMULTISERIESUNIFORM )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (Q3DBars *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setMultiSeriesUniform( PBOOL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
float barThickness() const
*/
HB_FUNC_STATIC( Q3DBARS_BARTHICKNESS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (Q3DBars *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RFLOAT( obj->barThickness() );
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
void setBarThickness(float thicknessRatio)
*/
HB_FUNC_STATIC( Q3DBARS_SETBARTHICKNESS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (Q3DBars *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setBarThickness( PFLOAT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QSizeF barSpacing() const
*/
HB_FUNC_STATIC( Q3DBARS_BARSPACING )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (Q3DBars *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QSizeF( obj->barSpacing() );
      Qt5xHb::createReturnClass( ptr, "QSIZEF", true );
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
void setBarSpacing(const QSizeF &spacing)
*/
HB_FUNC_STATIC( Q3DBARS_SETBARSPACING )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (Q3DBars *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQSIZEF(1) )
    {
#endif
      obj->setBarSpacing( *PQSIZEF(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
bool isBarSpacingRelative() const
*/
HB_FUNC_STATIC( Q3DBARS_ISBARSPACINGRELATIVE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (Q3DBars *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isBarSpacingRelative() );
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
void setBarSpacingRelative(bool relative)
*/
HB_FUNC_STATIC( Q3DBARS_SETBARSPACINGRELATIVE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (Q3DBars *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setBarSpacingRelative( PBOOL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QCategory3DAxis *rowAxis() const
*/
HB_FUNC_STATIC( Q3DBARS_ROWAXIS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (Q3DBars *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QCategory3DAxis * ptr = obj->rowAxis();
      Qt5xHb::createReturnQObjectClass( ptr, "QCATEGORY3DAXIS" );
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
void setRowAxis(QCategory3DAxis *axis)
*/
HB_FUNC_STATIC( Q3DBARS_SETROWAXIS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (Q3DBars *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQCATEGORY3DAXIS(1) )
    {
#endif
      obj->setRowAxis( PQCATEGORY3DAXIS(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QCategory3DAxis *columnAxis() const
*/
HB_FUNC_STATIC( Q3DBARS_COLUMNAXIS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (Q3DBars *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QCategory3DAxis * ptr = obj->columnAxis();
      Qt5xHb::createReturnQObjectClass( ptr, "QCATEGORY3DAXIS" );
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
void setColumnAxis(QCategory3DAxis *axis)
*/
HB_FUNC_STATIC( Q3DBARS_SETCOLUMNAXIS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (Q3DBars *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQCATEGORY3DAXIS(1) )
    {
#endif
      obj->setColumnAxis( PQCATEGORY3DAXIS(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QValue3DAxis *valueAxis() const
*/
HB_FUNC_STATIC( Q3DBARS_VALUEAXIS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (Q3DBars *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QValue3DAxis * ptr = obj->valueAxis();
      Qt5xHb::createReturnQObjectClass( ptr, "QVALUE3DAXIS" );
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
void setValueAxis(QValue3DAxis *axis)
*/
HB_FUNC_STATIC( Q3DBARS_SETVALUEAXIS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (Q3DBars *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQVALUE3DAXIS(1) )
    {
#endif
      obj->setValueAxis( PQVALUE3DAXIS(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QBar3DSeries *primarySeries() const
*/
HB_FUNC_STATIC( Q3DBARS_PRIMARYSERIES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (Q3DBars *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QBar3DSeries * ptr = obj->primarySeries();
      Qt5xHb::createReturnQObjectClass( ptr, "QBAR3DSERIES" );
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
void setPrimarySeries(QBar3DSeries *series)
*/
HB_FUNC_STATIC( Q3DBARS_SETPRIMARYSERIES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (Q3DBars *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQBAR3DSERIES(1) )
    {
#endif
      obj->setPrimarySeries( PQBAR3DSERIES(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QBar3DSeries *selectedSeries() const
*/
HB_FUNC_STATIC( Q3DBARS_SELECTEDSERIES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (Q3DBars *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QBar3DSeries * ptr = obj->selectedSeries();
      Qt5xHb::createReturnQObjectClass( ptr, "QBAR3DSERIES" );
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
float floorLevel() const
*/
HB_FUNC_STATIC( Q3DBARS_FLOORLEVEL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (Q3DBars *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RFLOAT( obj->floorLevel() );
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
void setFloorLevel(float level)
*/
HB_FUNC_STATIC( Q3DBARS_SETFLOORLEVEL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (Q3DBars *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setFloorLevel( PFLOAT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void addSeries(QBar3DSeries *series)
*/
HB_FUNC_STATIC( Q3DBARS_ADDSERIES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (Q3DBars *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQBAR3DSERIES(1) )
    {
#endif
      obj->addSeries( PQBAR3DSERIES(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void removeSeries(QBar3DSeries *series)
*/
HB_FUNC_STATIC( Q3DBARS_REMOVESERIES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (Q3DBars *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQBAR3DSERIES(1) )
    {
#endif
      obj->removeSeries( PQBAR3DSERIES(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void insertSeries(int index, QBar3DSeries *series)
*/
HB_FUNC_STATIC( Q3DBARS_INSERTSERIES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (Q3DBars *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISNUM(1) && ISQBAR3DSERIES(2) )
    {
#endif
      obj->insertSeries( PINT(1), PQBAR3DSERIES(2) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QList<QBar3DSeries *> seriesList() const
*/
HB_FUNC_STATIC( Q3DBARS_SERIESLIST )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (Q3DBars *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QList<QBar3DSeries *> list = obj->seriesList();
      PHB_DYNS pDynSym = hb_dynsymFindName( "QBAR3DSERIES" );
      PHB_ITEM pArray = hb_itemArrayNew(0);
      if( pDynSym )
      {
        for( auto i = 0; i < list.count(); i++ )
        {
          hb_vmPushDynSym( pDynSym );
          hb_vmPushNil();
          hb_vmDo( 0 );
          PHB_ITEM pObject = hb_itemNew( NULL );
          hb_itemCopy( pObject, hb_stackReturnItem() );
          PHB_ITEM pItem = hb_itemNew( NULL );
          hb_itemPutPtr( pItem, (QBar3DSeries *) list[i] );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
      }
      else
      {
        hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QBAR3DSERIES", HB_ERR_ARGS_BASEPARAMS );
      }
      hb_itemReturnRelease(pArray);
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
void addAxis(QAbstract3DAxis *axis)
*/
HB_FUNC_STATIC( Q3DBARS_ADDAXIS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (Q3DBars *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQABSTRACT3DAXIS(1) )
    {
#endif
      obj->addAxis( PQABSTRACT3DAXIS(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void releaseAxis(QAbstract3DAxis *axis)
*/
HB_FUNC_STATIC( Q3DBARS_RELEASEAXIS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (Q3DBars *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQABSTRACT3DAXIS(1) )
    {
#endif
      obj->releaseAxis( PQABSTRACT3DAXIS(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QList<QAbstract3DAxis *> axes() const
*/
HB_FUNC_STATIC( Q3DBARS_AXES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (Q3DBars *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QList<QAbstract3DAxis *> list = obj->axes();
      PHB_DYNS pDynSym = hb_dynsymFindName( "QABSTRACT3DAXIS" );
      PHB_ITEM pArray = hb_itemArrayNew(0);
      if( pDynSym )
      {
        for( auto i = 0; i < list.count(); i++ )
        {
          hb_vmPushDynSym( pDynSym );
          hb_vmPushNil();
          hb_vmDo( 0 );
          PHB_ITEM pObject = hb_itemNew( NULL );
          hb_itemCopy( pObject, hb_stackReturnItem() );
          PHB_ITEM pItem = hb_itemNew( NULL );
          hb_itemPutPtr( pItem, (QAbstract3DAxis *) list[i] );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
      }
      else
      {
        hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QABSTRACT3DAXIS", HB_ERR_ARGS_BASEPARAMS );
      }
      hb_itemReturnRelease(pArray);
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
void multiSeriesUniformChanged( bool uniform )
*/
HB_FUNC_STATIC( Q3DBARS_ONMULTISERIESUNIFORMCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto sender = (Q3DBars *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("multiSeriesUniformChanged(bool)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &Q3DBars::multiSeriesUniformChanged, 
                                                              [sender, indexOfCodeBlock]
                                                              (bool arg1) {
          PHB_ITEM cb = Signals_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals_return_qobject( (QObject *) sender, "Q3DBARS" );
            PHB_ITEM pArg1 = hb_itemPutL( NULL, arg1 );
            hb_vmEvalBlockV( cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Signals_disconnection( sender, indexOfSignal );

      QObject::disconnect( Signals_get_connection( sender, indexOfSignal ) );

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
#else
  hb_retl( false );
#endif
}

/*
void barThicknessChanged( float thicknessRatio )
*/
HB_FUNC_STATIC( Q3DBARS_ONBARTHICKNESSCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto sender = (Q3DBars *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("barThicknessChanged(float)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &Q3DBars::barThicknessChanged, 
                                                              [sender, indexOfCodeBlock]
                                                              (float arg1) {
          PHB_ITEM cb = Signals_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals_return_qobject( (QObject *) sender, "Q3DBARS" );
            PHB_ITEM pArg1 = hb_itemPutND( NULL, arg1 );
            hb_vmEvalBlockV( cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Signals_disconnection( sender, indexOfSignal );

      QObject::disconnect( Signals_get_connection( sender, indexOfSignal ) );

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
#else
  hb_retl( false );
#endif
}

/*
void barSpacingChanged( const QSizeF & spacing )
*/
HB_FUNC_STATIC( Q3DBARS_ONBARSPACINGCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto sender = (Q3DBars *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("barSpacingChanged(QSizeF)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &Q3DBars::barSpacingChanged, 
                                                              [sender, indexOfCodeBlock]
                                                              (const QSizeF & arg1) {
          PHB_ITEM cb = Signals_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals_return_qobject( (QObject *) sender, "Q3DBARS" );
            PHB_ITEM pArg1 = Signals_return_object( (void *) &arg1, "QSIZEF" );
            hb_vmEvalBlockV( cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Signals_disconnection( sender, indexOfSignal );

      QObject::disconnect( Signals_get_connection( sender, indexOfSignal ) );

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
#else
  hb_retl( false );
#endif
}

/*
void barSpacingRelativeChanged( bool relative )
*/
HB_FUNC_STATIC( Q3DBARS_ONBARSPACINGRELATIVECHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto sender = (Q3DBars *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("barSpacingRelativeChanged(bool)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &Q3DBars::barSpacingRelativeChanged, 
                                                              [sender, indexOfCodeBlock]
                                                              (bool arg1) {
          PHB_ITEM cb = Signals_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals_return_qobject( (QObject *) sender, "Q3DBARS" );
            PHB_ITEM pArg1 = hb_itemPutL( NULL, arg1 );
            hb_vmEvalBlockV( cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Signals_disconnection( sender, indexOfSignal );

      QObject::disconnect( Signals_get_connection( sender, indexOfSignal ) );

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
#else
  hb_retl( false );
#endif
}

/*
void rowAxisChanged( QCategory3DAxis * axis )
*/
HB_FUNC_STATIC( Q3DBARS_ONROWAXISCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto sender = (Q3DBars *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("rowAxisChanged(QCategory3DAxis*)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &Q3DBars::rowAxisChanged, 
                                                              [sender, indexOfCodeBlock]
                                                              (QCategory3DAxis * arg1) {
          PHB_ITEM cb = Signals_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals_return_qobject( (QObject *) sender, "Q3DBARS" );
            PHB_ITEM pArg1 = Signals_return_qobject( (QObject *) arg1, "QCATEGORY3DAXIS" );
            hb_vmEvalBlockV( cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Signals_disconnection( sender, indexOfSignal );

      QObject::disconnect( Signals_get_connection( sender, indexOfSignal ) );

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
#else
  hb_retl( false );
#endif
}

/*
void columnAxisChanged( QCategory3DAxis * axis )
*/
HB_FUNC_STATIC( Q3DBARS_ONCOLUMNAXISCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto sender = (Q3DBars *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("columnAxisChanged(QCategory3DAxis*)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &Q3DBars::columnAxisChanged, 
                                                              [sender, indexOfCodeBlock]
                                                              (QCategory3DAxis * arg1) {
          PHB_ITEM cb = Signals_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals_return_qobject( (QObject *) sender, "Q3DBARS" );
            PHB_ITEM pArg1 = Signals_return_qobject( (QObject *) arg1, "QCATEGORY3DAXIS" );
            hb_vmEvalBlockV( cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Signals_disconnection( sender, indexOfSignal );

      QObject::disconnect( Signals_get_connection( sender, indexOfSignal ) );

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
#else
  hb_retl( false );
#endif
}

/*
void valueAxisChanged( QValue3DAxis * axis )
*/
HB_FUNC_STATIC( Q3DBARS_ONVALUEAXISCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto sender = (Q3DBars *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("valueAxisChanged(QValue3DAxis*)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &Q3DBars::valueAxisChanged, 
                                                              [sender, indexOfCodeBlock]
                                                              (QValue3DAxis * arg1) {
          PHB_ITEM cb = Signals_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals_return_qobject( (QObject *) sender, "Q3DBARS" );
            PHB_ITEM pArg1 = Signals_return_qobject( (QObject *) arg1, "QVALUE3DAXIS" );
            hb_vmEvalBlockV( cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Signals_disconnection( sender, indexOfSignal );

      QObject::disconnect( Signals_get_connection( sender, indexOfSignal ) );

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
#else
  hb_retl( false );
#endif
}

/*
void primarySeriesChanged( QBar3DSeries * series )
*/
HB_FUNC_STATIC( Q3DBARS_ONPRIMARYSERIESCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto sender = (Q3DBars *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("primarySeriesChanged(QBar3DSeries*)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &Q3DBars::primarySeriesChanged, 
                                                              [sender, indexOfCodeBlock]
                                                              (QBar3DSeries * arg1) {
          PHB_ITEM cb = Signals_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals_return_qobject( (QObject *) sender, "Q3DBARS" );
            PHB_ITEM pArg1 = Signals_return_qobject( (QObject *) arg1, "QBAR3DSERIES" );
            hb_vmEvalBlockV( cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Signals_disconnection( sender, indexOfSignal );

      QObject::disconnect( Signals_get_connection( sender, indexOfSignal ) );

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
#else
  hb_retl( false );
#endif
}

/*
void selectedSeriesChanged( QBar3DSeries * series )
*/
HB_FUNC_STATIC( Q3DBARS_ONSELECTEDSERIESCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto sender = (Q3DBars *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("selectedSeriesChanged(QBar3DSeries*)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &Q3DBars::selectedSeriesChanged, 
                                                              [sender, indexOfCodeBlock]
                                                              (QBar3DSeries * arg1) {
          PHB_ITEM cb = Signals_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals_return_qobject( (QObject *) sender, "Q3DBARS" );
            PHB_ITEM pArg1 = Signals_return_qobject( (QObject *) arg1, "QBAR3DSERIES" );
            hb_vmEvalBlockV( cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Signals_disconnection( sender, indexOfSignal );

      QObject::disconnect( Signals_get_connection( sender, indexOfSignal ) );

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
#else
  hb_retl( false );
#endif
}

/*
void floorLevelChanged( float level )
*/
HB_FUNC_STATIC( Q3DBARS_ONFLOORLEVELCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto sender = (Q3DBars *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("floorLevelChanged(float)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &Q3DBars::floorLevelChanged, 
                                                              [sender, indexOfCodeBlock]
                                                              (float arg1) {
          PHB_ITEM cb = Signals_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals_return_qobject( (QObject *) sender, "Q3DBARS" );
            PHB_ITEM pArg1 = hb_itemPutND( NULL, arg1 );
            hb_vmEvalBlockV( cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Signals_disconnection( sender, indexOfSignal );

      QObject::disconnect( Signals_get_connection( sender, indexOfSignal ) );

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
#else
  hb_retl( false );
#endif
}

#pragma ENDDUMP
