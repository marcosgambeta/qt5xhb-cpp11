/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QCHART
#endif

CLASS QChartView INHERIT QGraphicsView

   METHOD new
   METHOD delete
   METHOD rubberBand
   METHOD chart
   METHOD setChart

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QChartView
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QtCharts/QChartView>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QtCharts/QChartView>
#endif
#endif

using namespace QtCharts;

/*
explicit QChartView(QWidget *parent = nullptr)
*/
void QChartView_new1()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = new QChartView( OPQWIDGET(1,nullptr) );
  Qt5xHb::returnNewObject( obj, false );
#endif
}

/*
explicit QChartView(QChart *chart, QWidget *parent = nullptr)
*/
void QChartView_new2()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = new QChartView( PQCHART(1), OPQWIDGET(2,nullptr) );
  Qt5xHb::returnNewObject( obj, false );
#endif
}

/*
[1]explicit QChartView(QWidget *parent = nullptr)
[2]explicit QChartView(QChart *chart, QWidget *parent = nullptr)
*/

HB_FUNC_STATIC( QCHARTVIEW_NEW )
{
  if( ISBETWEEN(0,1) && (ISQWIDGET(1)||ISNIL(1)) )
  {
    QChartView_new1();
  }
  else if( ISBETWEEN(1,2) && ISQCHART(1) && (ISQWIDGET(2)||ISNIL(2)) )
  {
    QChartView_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
~QChartView()
*/
HB_FUNC_STATIC( QCHARTVIEW_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (QChartView *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    Qt5xHb::Events_disconnect_all_events( obj, true );
    Qt5xHb::Signals_disconnect_all_signals( obj, true );
    delete obj;
    obj = nullptr;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( nullptr, nullptr );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void setRubberBand(const RubberBands &rubberBands)
*/

/*
RubberBands rubberBand() const
*/
HB_FUNC_STATIC( QCHARTVIEW_RUBBERBAND )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (QChartView *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->rubberBand() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
QChart *chart() const
*/
HB_FUNC_STATIC( QCHARTVIEW_CHART )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (QChartView *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QChart * ptr = obj->chart();
      Qt5xHb::createReturnQObjectClass( ptr, "QCHART" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setChart(QChart *chart)
*/
HB_FUNC_STATIC( QCHARTVIEW_SETCHART )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (QChartView *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQCHART(1) )
    {
#endif
      obj->setChart( PQCHART(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void resizeEvent(QResizeEvent *event) [protected]
*/

/*
void mousePressEvent(QMouseEvent *event) [protected]
*/

/*
void mouseMoveEvent(QMouseEvent *event) [protected]
*/

/*
void mouseReleaseEvent(QMouseEvent *event) [protected]
*/

#pragma ENDDUMP
