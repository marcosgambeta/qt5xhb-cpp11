/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

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

PROCEDURE destroyObject () CLASS Q3DBars
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <Q3DBars>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals2.h"

#ifdef __XHARBOUR__
#include <Q3DBars>
#endif

using namespace QtDataVisualization;

/*
explicit Q3DBars(const QSurfaceFormat *format = Q_NULLPTR, QWindow *parent = Q_NULLPTR)
*/
HB_FUNC_STATIC( Q3DBARS_NEW )
{
  if( ISBETWEEN(0,2) && (ISQSURFACEFORMAT(1)||ISNIL(1)) && (ISQWINDOW(2)||ISNIL(2)) )
  {
    Q3DBars * o = new Q3DBars ( ISNIL(1)? Q_NULLPTR : (QSurfaceFormat *) _qt5xhb_itemGetPtr(1), OPQWINDOW(2,Q_NULLPTR) );
    _qt5xhb_returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
virtual ~Q3DBars()
*/
HB_FUNC_STATIC( Q3DBARS_DELETE )
{
  Q3DBars * obj = (Q3DBars *) _qt5xhb_itemGetPtrStackSelfItem();

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
bool isMultiSeriesUniform() const
*/
HB_FUNC_STATIC( Q3DBARS_ISMULTISERIESUNIFORM )
{
  Q3DBars * obj = (Q3DBars *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isMultiSeriesUniform () );
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
void setMultiSeriesUniform(bool uniform)
*/
HB_FUNC_STATIC( Q3DBARS_SETMULTISERIESUNIFORM )
{
  Q3DBars * obj = (Q3DBars *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setMultiSeriesUniform ( PBOOL(1) );
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
float barThickness() const
*/
HB_FUNC_STATIC( Q3DBARS_BARTHICKNESS )
{
  Q3DBars * obj = (Q3DBars *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RFLOAT( obj->barThickness () );
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
void setBarThickness(float thicknessRatio)
*/
HB_FUNC_STATIC( Q3DBARS_SETBARTHICKNESS )
{
  Q3DBars * obj = (Q3DBars *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setBarThickness ( PFLOAT(1) );
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
QSizeF barSpacing() const
*/
HB_FUNC_STATIC( Q3DBARS_BARSPACING )
{
  Q3DBars * obj = (Q3DBars *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QSizeF * ptr = new QSizeF( obj->barSpacing () );
      _qt5xhb_createReturnClass ( ptr, "QSIZEF", true );
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
void setBarSpacing(const QSizeF &spacing)
*/
HB_FUNC_STATIC( Q3DBARS_SETBARSPACING )
{
  Q3DBars * obj = (Q3DBars *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQSIZEF(1) )
    {
#endif
      obj->setBarSpacing ( *PQSIZEF(1) );
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
bool isBarSpacingRelative() const
*/
HB_FUNC_STATIC( Q3DBARS_ISBARSPACINGRELATIVE )
{
  Q3DBars * obj = (Q3DBars *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isBarSpacingRelative () );
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
void setBarSpacingRelative(bool relative)
*/
HB_FUNC_STATIC( Q3DBARS_SETBARSPACINGRELATIVE )
{
  Q3DBars * obj = (Q3DBars *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setBarSpacingRelative ( PBOOL(1) );
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
QCategory3DAxis *rowAxis() const
*/
HB_FUNC_STATIC( Q3DBARS_ROWAXIS )
{
  Q3DBars * obj = (Q3DBars *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QCategory3DAxis * ptr = obj->rowAxis ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QCATEGORY3DAXIS" );
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
void setRowAxis(QCategory3DAxis *axis)
*/
HB_FUNC_STATIC( Q3DBARS_SETROWAXIS )
{
  Q3DBars * obj = (Q3DBars *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQCATEGORY3DAXIS(1) )
    {
#endif
      obj->setRowAxis ( PQCATEGORY3DAXIS(1) );
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
QCategory3DAxis *columnAxis() const
*/
HB_FUNC_STATIC( Q3DBARS_COLUMNAXIS )
{
  Q3DBars * obj = (Q3DBars *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QCategory3DAxis * ptr = obj->columnAxis ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QCATEGORY3DAXIS" );
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
void setColumnAxis(QCategory3DAxis *axis)
*/
HB_FUNC_STATIC( Q3DBARS_SETCOLUMNAXIS )
{
  Q3DBars * obj = (Q3DBars *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQCATEGORY3DAXIS(1) )
    {
#endif
      obj->setColumnAxis ( PQCATEGORY3DAXIS(1) );
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
QValue3DAxis *valueAxis() const
*/
HB_FUNC_STATIC( Q3DBARS_VALUEAXIS )
{
  Q3DBars * obj = (Q3DBars *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QValue3DAxis * ptr = obj->valueAxis ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QVALUE3DAXIS" );
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
void setValueAxis(QValue3DAxis *axis)
*/
HB_FUNC_STATIC( Q3DBARS_SETVALUEAXIS )
{
  Q3DBars * obj = (Q3DBars *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQVALUE3DAXIS(1) )
    {
#endif
      obj->setValueAxis ( PQVALUE3DAXIS(1) );
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
QBar3DSeries *primarySeries() const
*/
HB_FUNC_STATIC( Q3DBARS_PRIMARYSERIES )
{
  Q3DBars * obj = (Q3DBars *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QBar3DSeries * ptr = obj->primarySeries ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QBAR3DSERIES" );
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
void setPrimarySeries(QBar3DSeries *series)
*/
HB_FUNC_STATIC( Q3DBARS_SETPRIMARYSERIES )
{
  Q3DBars * obj = (Q3DBars *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQBAR3DSERIES(1) )
    {
#endif
      obj->setPrimarySeries ( PQBAR3DSERIES(1) );
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
QBar3DSeries *selectedSeries() const
*/
HB_FUNC_STATIC( Q3DBARS_SELECTEDSERIES )
{
  Q3DBars * obj = (Q3DBars *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QBar3DSeries * ptr = obj->selectedSeries ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QBAR3DSERIES" );
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
float floorLevel() const
*/
HB_FUNC_STATIC( Q3DBARS_FLOORLEVEL )
{
  Q3DBars * obj = (Q3DBars *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RFLOAT( obj->floorLevel () );
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
void setFloorLevel(float level)
*/
HB_FUNC_STATIC( Q3DBARS_SETFLOORLEVEL )
{
  Q3DBars * obj = (Q3DBars *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setFloorLevel ( PFLOAT(1) );
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
void addSeries(QBar3DSeries *series)
*/
HB_FUNC_STATIC( Q3DBARS_ADDSERIES )
{
  Q3DBars * obj = (Q3DBars *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQBAR3DSERIES(1) )
    {
#endif
      obj->addSeries ( PQBAR3DSERIES(1) );
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
void removeSeries(QBar3DSeries *series)
*/
HB_FUNC_STATIC( Q3DBARS_REMOVESERIES )
{
  Q3DBars * obj = (Q3DBars *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQBAR3DSERIES(1) )
    {
#endif
      obj->removeSeries ( PQBAR3DSERIES(1) );
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
void insertSeries(int index, QBar3DSeries *series)
*/
HB_FUNC_STATIC( Q3DBARS_INSERTSERIES )
{
  Q3DBars * obj = (Q3DBars *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISNUM(1) && ISQBAR3DSERIES(2) )
    {
#endif
      obj->insertSeries ( PINT(1), PQBAR3DSERIES(2) );
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
QList<QBar3DSeries *> seriesList() const
*/
HB_FUNC_STATIC( Q3DBARS_SERIESLIST )
{
  Q3DBars * obj = (Q3DBars *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QList<QBar3DSeries *> list = obj->seriesList ();
      PHB_DYNS pDynSym = hb_dynsymFindName( "QBAR3DSERIES" );
      PHB_ITEM pArray = hb_itemArrayNew(0);
      int i;
      for(i=0;i<list.count();i++)
      {
        if( pDynSym )
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
        else
        {
          hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QBAR3DSERIES", HB_ERR_ARGS_BASEPARAMS );
        }
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
}

/*
void addAxis(QAbstract3DAxis *axis)
*/
HB_FUNC_STATIC( Q3DBARS_ADDAXIS )
{
  Q3DBars * obj = (Q3DBars *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQABSTRACT3DAXIS(1) )
    {
#endif
      obj->addAxis ( PQABSTRACT3DAXIS(1) );
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
void releaseAxis(QAbstract3DAxis *axis)
*/
HB_FUNC_STATIC( Q3DBARS_RELEASEAXIS )
{
  Q3DBars * obj = (Q3DBars *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQABSTRACT3DAXIS(1) )
    {
#endif
      obj->releaseAxis ( PQABSTRACT3DAXIS(1) );
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
QList<QAbstract3DAxis *> axes() const
*/
HB_FUNC_STATIC( Q3DBARS_AXES )
{
  Q3DBars * obj = (Q3DBars *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QList<QAbstract3DAxis *> list = obj->axes ();
      PHB_DYNS pDynSym = hb_dynsymFindName( "QABSTRACT3DAXIS" );
      PHB_ITEM pArray = hb_itemArrayNew(0);
      int i;
      for(i=0;i<list.count();i++)
      {
        if( pDynSym )
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
        else
        {
          hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QABSTRACT3DAXIS", HB_ERR_ARGS_BASEPARAMS );
        }
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
}

using namespace QtDataVisualization;

/*
void multiSeriesUniformChanged( bool uniform )
*/
HB_FUNC_STATIC( Q3DBARS_ONMULTISERIESUNIFORMCHANGED )
{
  if( hb_pcount() == 1 )
  {
    Q3DBars * sender = (Q3DBars *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      if( Signals2_connection( sender, "multiSeriesUniformChanged(bool)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &Q3DBars::multiSeriesUniformChanged, 
                                                              [sender]
                                                              (bool arg1) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "multiSeriesUniformChanged(bool)" );

          if( cb )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "Q3DBARS" );
            PHB_ITEM pArg1 = hb_itemPutL( NULL, arg1 );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals2_store_connection( sender, "multiSeriesUniformChanged(bool)", connection );

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
    Q3DBars * sender = (Q3DBars *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      Signals2_disconnection( sender, "multiSeriesUniformChanged(bool)" );

      QObject::disconnect( Signals2_get_connection( sender, "multiSeriesUniformChanged(bool)" ) );

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
void barThicknessChanged( float thicknessRatio )
*/
HB_FUNC_STATIC( Q3DBARS_ONBARTHICKNESSCHANGED )
{
  if( hb_pcount() == 1 )
  {
    Q3DBars * sender = (Q3DBars *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      if( Signals2_connection( sender, "barThicknessChanged(float)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &Q3DBars::barThicknessChanged, 
                                                              [sender]
                                                              (float arg1) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "barThicknessChanged(float)" );

          if( cb )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "Q3DBARS" );
            PHB_ITEM pArg1 = hb_itemPutND( NULL, arg1 );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals2_store_connection( sender, "barThicknessChanged(float)", connection );

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
    Q3DBars * sender = (Q3DBars *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      Signals2_disconnection( sender, "barThicknessChanged(float)" );

      QObject::disconnect( Signals2_get_connection( sender, "barThicknessChanged(float)" ) );

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
void barSpacingChanged( const QSizeF & spacing )
*/
HB_FUNC_STATIC( Q3DBARS_ONBARSPACINGCHANGED )
{
  if( hb_pcount() == 1 )
  {
    Q3DBars * sender = (Q3DBars *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      if( Signals2_connection( sender, "barSpacingChanged(QSizeF)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &Q3DBars::barSpacingChanged, 
                                                              [sender]
                                                              (const QSizeF & arg1) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "barSpacingChanged(QSizeF)" );

          if( cb )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "Q3DBARS" );
            PHB_ITEM pArg1 = Signals2_return_object( (void *) &arg1, "QSIZEF" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals2_store_connection( sender, "barSpacingChanged(QSizeF)", connection );

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
    Q3DBars * sender = (Q3DBars *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      Signals2_disconnection( sender, "barSpacingChanged(QSizeF)" );

      QObject::disconnect( Signals2_get_connection( sender, "barSpacingChanged(QSizeF)" ) );

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
void barSpacingRelativeChanged( bool relative )
*/
HB_FUNC_STATIC( Q3DBARS_ONBARSPACINGRELATIVECHANGED )
{
  if( hb_pcount() == 1 )
  {
    Q3DBars * sender = (Q3DBars *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      if( Signals2_connection( sender, "barSpacingRelativeChanged(bool)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &Q3DBars::barSpacingRelativeChanged, 
                                                              [sender]
                                                              (bool arg1) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "barSpacingRelativeChanged(bool)" );

          if( cb )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "Q3DBARS" );
            PHB_ITEM pArg1 = hb_itemPutL( NULL, arg1 );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals2_store_connection( sender, "barSpacingRelativeChanged(bool)", connection );

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
    Q3DBars * sender = (Q3DBars *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      Signals2_disconnection( sender, "barSpacingRelativeChanged(bool)" );

      QObject::disconnect( Signals2_get_connection( sender, "barSpacingRelativeChanged(bool)" ) );

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
void rowAxisChanged( QCategory3DAxis * axis )
*/
HB_FUNC_STATIC( Q3DBARS_ONROWAXISCHANGED )
{
  if( hb_pcount() == 1 )
  {
    Q3DBars * sender = (Q3DBars *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      if( Signals2_connection( sender, "rowAxisChanged(QCategory3DAxis*)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &Q3DBars::rowAxisChanged, 
                                                              [sender]
                                                              (QCategory3DAxis * arg1) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "rowAxisChanged(QCategory3DAxis*)" );

          if( cb )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "Q3DBARS" );
            PHB_ITEM pArg1 = Signals2_return_qobject( (QObject *) arg1, "QCATEGORY3DAXIS" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals2_store_connection( sender, "rowAxisChanged(QCategory3DAxis*)", connection );

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
    Q3DBars * sender = (Q3DBars *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      Signals2_disconnection( sender, "rowAxisChanged(QCategory3DAxis*)" );

      QObject::disconnect( Signals2_get_connection( sender, "rowAxisChanged(QCategory3DAxis*)" ) );

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
void columnAxisChanged( QCategory3DAxis * axis )
*/
HB_FUNC_STATIC( Q3DBARS_ONCOLUMNAXISCHANGED )
{
  if( hb_pcount() == 1 )
  {
    Q3DBars * sender = (Q3DBars *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      if( Signals2_connection( sender, "columnAxisChanged(QCategory3DAxis*)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &Q3DBars::columnAxisChanged, 
                                                              [sender]
                                                              (QCategory3DAxis * arg1) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "columnAxisChanged(QCategory3DAxis*)" );

          if( cb )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "Q3DBARS" );
            PHB_ITEM pArg1 = Signals2_return_qobject( (QObject *) arg1, "QCATEGORY3DAXIS" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals2_store_connection( sender, "columnAxisChanged(QCategory3DAxis*)", connection );

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
    Q3DBars * sender = (Q3DBars *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      Signals2_disconnection( sender, "columnAxisChanged(QCategory3DAxis*)" );

      QObject::disconnect( Signals2_get_connection( sender, "columnAxisChanged(QCategory3DAxis*)" ) );

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
void valueAxisChanged( QValue3DAxis * axis )
*/
HB_FUNC_STATIC( Q3DBARS_ONVALUEAXISCHANGED )
{
  if( hb_pcount() == 1 )
  {
    Q3DBars * sender = (Q3DBars *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      if( Signals2_connection( sender, "valueAxisChanged(QValue3DAxis*)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &Q3DBars::valueAxisChanged, 
                                                              [sender]
                                                              (QValue3DAxis * arg1) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "valueAxisChanged(QValue3DAxis*)" );

          if( cb )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "Q3DBARS" );
            PHB_ITEM pArg1 = Signals2_return_qobject( (QObject *) arg1, "QVALUE3DAXIS" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals2_store_connection( sender, "valueAxisChanged(QValue3DAxis*)", connection );

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
    Q3DBars * sender = (Q3DBars *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      Signals2_disconnection( sender, "valueAxisChanged(QValue3DAxis*)" );

      QObject::disconnect( Signals2_get_connection( sender, "valueAxisChanged(QValue3DAxis*)" ) );

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
void primarySeriesChanged( QBar3DSeries * series )
*/
HB_FUNC_STATIC( Q3DBARS_ONPRIMARYSERIESCHANGED )
{
  if( hb_pcount() == 1 )
  {
    Q3DBars * sender = (Q3DBars *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      if( Signals2_connection( sender, "primarySeriesChanged(QBar3DSeries*)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &Q3DBars::primarySeriesChanged, 
                                                              [sender]
                                                              (QBar3DSeries * arg1) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "primarySeriesChanged(QBar3DSeries*)" );

          if( cb )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "Q3DBARS" );
            PHB_ITEM pArg1 = Signals2_return_qobject( (QObject *) arg1, "QBAR3DSERIES" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals2_store_connection( sender, "primarySeriesChanged(QBar3DSeries*)", connection );

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
    Q3DBars * sender = (Q3DBars *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      Signals2_disconnection( sender, "primarySeriesChanged(QBar3DSeries*)" );

      QObject::disconnect( Signals2_get_connection( sender, "primarySeriesChanged(QBar3DSeries*)" ) );

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
void selectedSeriesChanged( QBar3DSeries * series )
*/
HB_FUNC_STATIC( Q3DBARS_ONSELECTEDSERIESCHANGED )
{
  if( hb_pcount() == 1 )
  {
    Q3DBars * sender = (Q3DBars *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      if( Signals2_connection( sender, "selectedSeriesChanged(QBar3DSeries*)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &Q3DBars::selectedSeriesChanged, 
                                                              [sender]
                                                              (QBar3DSeries * arg1) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "selectedSeriesChanged(QBar3DSeries*)" );

          if( cb )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "Q3DBARS" );
            PHB_ITEM pArg1 = Signals2_return_qobject( (QObject *) arg1, "QBAR3DSERIES" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals2_store_connection( sender, "selectedSeriesChanged(QBar3DSeries*)", connection );

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
    Q3DBars * sender = (Q3DBars *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      Signals2_disconnection( sender, "selectedSeriesChanged(QBar3DSeries*)" );

      QObject::disconnect( Signals2_get_connection( sender, "selectedSeriesChanged(QBar3DSeries*)" ) );

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
void floorLevelChanged( float level )
*/
HB_FUNC_STATIC( Q3DBARS_ONFLOORLEVELCHANGED )
{
  if( hb_pcount() == 1 )
  {
    Q3DBars * sender = (Q3DBars *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      if( Signals2_connection( sender, "floorLevelChanged(float)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &Q3DBars::floorLevelChanged, 
                                                              [sender]
                                                              (float arg1) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "floorLevelChanged(float)" );

          if( cb )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "Q3DBARS" );
            PHB_ITEM pArg1 = hb_itemPutND( NULL, arg1 );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals2_store_connection( sender, "floorLevelChanged(float)", connection );

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
    Q3DBars * sender = (Q3DBars *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      Signals2_disconnection( sender, "floorLevelChanged(float)" );

      QObject::disconnect( Signals2_get_connection( sender, "floorLevelChanged(float)" ) );

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
