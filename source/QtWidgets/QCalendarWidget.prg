/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QDATE
REQUEST QSIZE
REQUEST QTEXTCHARFORMAT
#endif

CLASS QCalendarWidget INHERIT QWidget

   METHOD new
   METHOD delete
   METHOD dateEditAcceptDelay
   METHOD dateTextFormat2
   METHOD dateTextFormat
   METHOD firstDayOfWeek
   METHOD headerTextFormat
   METHOD horizontalHeaderFormat
   METHOD isDateEditEnabled
   METHOD isGridVisible
   METHOD isNavigationBarVisible
   METHOD maximumDate
   METHOD minimumDate
   METHOD monthShown
   METHOD selectedDate
   METHOD selectionMode
   METHOD setDateEditAcceptDelay
   METHOD setDateEditEnabled
   METHOD setDateTextFormat
   METHOD setFirstDayOfWeek
   METHOD setHeaderTextFormat
   METHOD setHorizontalHeaderFormat
   METHOD setMaximumDate
   METHOD setMinimumDate
   METHOD setSelectionMode
   METHOD setVerticalHeaderFormat
   METHOD setWeekdayTextFormat
   METHOD verticalHeaderFormat
   METHOD weekdayTextFormat
   METHOD yearShown
   METHOD minimumSizeHint
   METHOD sizeHint
   METHOD setCurrentPage
   METHOD setDateRange
   METHOD setGridVisible
   METHOD setNavigationBarVisible
   METHOD setSelectedDate
   METHOD showNextMonth
   METHOD showNextYear
   METHOD showPreviousMonth
   METHOD showPreviousYear
   METHOD showSelectedDate
   METHOD showToday

   METHOD onActivated
   METHOD onClicked
   METHOD onCurrentPageChanged
   METHOD onSelectionChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QCalendarWidget
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtWidgets/QCalendarWidget>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#include <QtWidgets/QCalendarWidget>
#endif

#include <QtGui/QTextCharFormat>

/*
QCalendarWidget( QWidget * parent = nullptr )
*/
HB_FUNC_STATIC( QCALENDARWIDGET_NEW )
{
  if( ISBETWEEN( 0, 1 ) && ( ISQWIDGET( 1 ) || HB_ISNIL( 1 ) ) )
  {
    auto obj = new QCalendarWidget( OPQWIDGET( 1, nullptr ) );
    Qt5xHb::returnNewObject( obj, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QCALENDARWIDGET_DELETE )
{
  auto obj = qobject_cast< QCalendarWidget * >( Qt5xHb::getQObjectPointerFromSelfItem() );

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
}

/*
int dateEditAcceptDelay() const
*/
HB_FUNC_STATIC( QCALENDARWIDGET_DATEEDITACCEPTDELAY )
{
  auto obj = qobject_cast< QCalendarWidget * >( Qt5xHb::getQObjectPointerFromSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RINT( obj->dateEditAcceptDelay() );
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
QTextCharFormat dateTextFormat( const QDate & date ) const
*/
HB_FUNC_STATIC( QCALENDARWIDGET_DATETEXTFORMAT2 )
{
  auto obj = qobject_cast< QCalendarWidget * >( Qt5xHb::getQObjectPointerFromSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISQDATE( 1 ) )
    {
#endif
      auto ptr = new QTextCharFormat( obj->dateTextFormat( *PQDATE( 1 ) ) );
      Qt5xHb::createReturnClass( ptr, "QTEXTCHARFORMAT", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

HB_FUNC_STATIC( QCALENDARWIDGET_DATETEXTFORMAT )
{
  if( ISNUMPAR( 1 ) && ISQDATE( 1 ) )
  {
    HB_FUNC_EXEC( QCALENDARWIDGET_DATETEXTFORMAT2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
Qt::DayOfWeek firstDayOfWeek() const
*/
HB_FUNC_STATIC( QCALENDARWIDGET_FIRSTDAYOFWEEK )
{
  auto obj = qobject_cast< QCalendarWidget * >( Qt5xHb::getQObjectPointerFromSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RENUM( obj->firstDayOfWeek() );
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
QTextCharFormat headerTextFormat() const
*/
HB_FUNC_STATIC( QCALENDARWIDGET_HEADERTEXTFORMAT )
{
  auto obj = qobject_cast< QCalendarWidget * >( Qt5xHb::getQObjectPointerFromSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      auto ptr = new QTextCharFormat( obj->headerTextFormat() );
      Qt5xHb::createReturnClass( ptr, "QTEXTCHARFORMAT", true );
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
QCalendarWidget::HorizontalHeaderFormat horizontalHeaderFormat() const
*/
HB_FUNC_STATIC( QCALENDARWIDGET_HORIZONTALHEADERFORMAT )
{
  auto obj = qobject_cast< QCalendarWidget * >( Qt5xHb::getQObjectPointerFromSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RENUM( obj->horizontalHeaderFormat() );
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
bool isDateEditEnabled() const
*/
HB_FUNC_STATIC( QCALENDARWIDGET_ISDATEEDITENABLED )
{
  auto obj = qobject_cast< QCalendarWidget * >( Qt5xHb::getQObjectPointerFromSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RBOOL( obj->isDateEditEnabled() );
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
bool isGridVisible() const
*/
HB_FUNC_STATIC( QCALENDARWIDGET_ISGRIDVISIBLE )
{
  auto obj = qobject_cast< QCalendarWidget * >( Qt5xHb::getQObjectPointerFromSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RBOOL( obj->isGridVisible() );
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
bool isNavigationBarVisible() const
*/
HB_FUNC_STATIC( QCALENDARWIDGET_ISNAVIGATIONBARVISIBLE )
{
  auto obj = qobject_cast< QCalendarWidget * >( Qt5xHb::getQObjectPointerFromSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RBOOL( obj->isNavigationBarVisible() );
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
QDate maximumDate() const
*/
HB_FUNC_STATIC( QCALENDARWIDGET_MAXIMUMDATE )
{
  auto obj = qobject_cast< QCalendarWidget * >( Qt5xHb::getQObjectPointerFromSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      auto ptr = new QDate( obj->maximumDate() );
      Qt5xHb::createReturnClass( ptr, "QDATE", true );
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
QDate minimumDate() const
*/
HB_FUNC_STATIC( QCALENDARWIDGET_MINIMUMDATE )
{
  auto obj = qobject_cast< QCalendarWidget * >( Qt5xHb::getQObjectPointerFromSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      auto ptr = new QDate( obj->minimumDate() );
      Qt5xHb::createReturnClass( ptr, "QDATE", true );
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
int monthShown() const
*/
HB_FUNC_STATIC( QCALENDARWIDGET_MONTHSHOWN )
{
  auto obj = qobject_cast< QCalendarWidget * >( Qt5xHb::getQObjectPointerFromSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RINT( obj->monthShown() );
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
QDate selectedDate() const
*/
HB_FUNC_STATIC( QCALENDARWIDGET_SELECTEDDATE )
{
  auto obj = qobject_cast< QCalendarWidget * >( Qt5xHb::getQObjectPointerFromSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      auto ptr = new QDate( obj->selectedDate() );
      Qt5xHb::createReturnClass( ptr, "QDATE", true );
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
QCalendarWidget::SelectionMode selectionMode() const
*/
HB_FUNC_STATIC( QCALENDARWIDGET_SELECTIONMODE )
{
  auto obj = qobject_cast< QCalendarWidget * >( Qt5xHb::getQObjectPointerFromSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RENUM( obj->selectionMode() );
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
void setDateEditAcceptDelay( int delay )
*/
HB_FUNC_STATIC( QCALENDARWIDGET_SETDATEEDITACCEPTDELAY )
{
  auto obj = qobject_cast< QCalendarWidget * >( Qt5xHb::getQObjectPointerFromSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && HB_ISNUM( 1 ) )
    {
#endif
      obj->setDateEditAcceptDelay( PINT( 1 ) );
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
void setDateEditEnabled( bool enable )
*/
HB_FUNC_STATIC( QCALENDARWIDGET_SETDATEEDITENABLED )
{
  auto obj = qobject_cast< QCalendarWidget * >( Qt5xHb::getQObjectPointerFromSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && HB_ISLOG( 1 ) )
    {
#endif
      obj->setDateEditEnabled( PBOOL( 1 ) );
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
void setDateTextFormat( const QDate & date, const QTextCharFormat & format )
*/
HB_FUNC_STATIC( QCALENDARWIDGET_SETDATETEXTFORMAT )
{
  auto obj = qobject_cast< QCalendarWidget * >( Qt5xHb::getQObjectPointerFromSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 2 ) && ISQDATE( 1 ) && ISQTEXTCHARFORMAT( 2 ) )
    {
#endif
      obj->setDateTextFormat( *PQDATE( 1 ), *PQTEXTCHARFORMAT( 2 ) );
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
void setFirstDayOfWeek( Qt::DayOfWeek dayOfWeek )
*/
HB_FUNC_STATIC( QCALENDARWIDGET_SETFIRSTDAYOFWEEK )
{
  auto obj = qobject_cast< QCalendarWidget * >( Qt5xHb::getQObjectPointerFromSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && HB_ISNUM( 1 ) )
    {
#endif
      obj->setFirstDayOfWeek( static_cast<Qt::DayOfWeek>( hb_parni( 1 ) ) );
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
void setHeaderTextFormat( const QTextCharFormat & format )
*/
HB_FUNC_STATIC( QCALENDARWIDGET_SETHEADERTEXTFORMAT )
{
  auto obj = qobject_cast< QCalendarWidget * >( Qt5xHb::getQObjectPointerFromSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISQTEXTCHARFORMAT( 1 ) )
    {
#endif
      obj->setHeaderTextFormat( *PQTEXTCHARFORMAT( 1 ) );
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
void setHorizontalHeaderFormat( QCalendarWidget::HorizontalHeaderFormat format )
*/
HB_FUNC_STATIC( QCALENDARWIDGET_SETHORIZONTALHEADERFORMAT )
{
  auto obj = qobject_cast< QCalendarWidget * >( Qt5xHb::getQObjectPointerFromSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && HB_ISNUM( 1 ) )
    {
#endif
      obj->setHorizontalHeaderFormat( static_cast<QCalendarWidget::HorizontalHeaderFormat>( hb_parni( 1 ) ) );
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
void setMaximumDate( const QDate & date )
*/
HB_FUNC_STATIC( QCALENDARWIDGET_SETMAXIMUMDATE )
{
  auto obj = qobject_cast< QCalendarWidget * >( Qt5xHb::getQObjectPointerFromSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISQDATE( 1 ) )
    {
#endif
      obj->setMaximumDate( *PQDATE( 1 ) );
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
void setMinimumDate( const QDate & date )
*/
HB_FUNC_STATIC( QCALENDARWIDGET_SETMINIMUMDATE )
{
  auto obj = qobject_cast< QCalendarWidget * >( Qt5xHb::getQObjectPointerFromSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISQDATE( 1 ) )
    {
#endif
      obj->setMinimumDate( *PQDATE( 1 ) );
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
void setSelectionMode( QCalendarWidget::SelectionMode mode )
*/
HB_FUNC_STATIC( QCALENDARWIDGET_SETSELECTIONMODE )
{
  auto obj = qobject_cast< QCalendarWidget * >( Qt5xHb::getQObjectPointerFromSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && HB_ISNUM( 1 ) )
    {
#endif
      obj->setSelectionMode( static_cast<QCalendarWidget::SelectionMode>( hb_parni( 1 ) ) );
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
void setVerticalHeaderFormat( QCalendarWidget::VerticalHeaderFormat format )
*/
HB_FUNC_STATIC( QCALENDARWIDGET_SETVERTICALHEADERFORMAT )
{
  auto obj = qobject_cast< QCalendarWidget * >( Qt5xHb::getQObjectPointerFromSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && HB_ISNUM( 1 ) )
    {
#endif
      obj->setVerticalHeaderFormat( static_cast<QCalendarWidget::VerticalHeaderFormat>( hb_parni( 1 ) ) );
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
void setWeekdayTextFormat( Qt::DayOfWeek dayOfWeek, const QTextCharFormat & format )
*/
HB_FUNC_STATIC( QCALENDARWIDGET_SETWEEKDAYTEXTFORMAT )
{
  auto obj = qobject_cast< QCalendarWidget * >( Qt5xHb::getQObjectPointerFromSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 2 ) && HB_ISNUM( 1 ) && ISQTEXTCHARFORMAT( 2 ) )
    {
#endif
      obj->setWeekdayTextFormat( static_cast<Qt::DayOfWeek>( hb_parni( 1 ) ), *PQTEXTCHARFORMAT( 2 ) );
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
QCalendarWidget::VerticalHeaderFormat verticalHeaderFormat() const
*/
HB_FUNC_STATIC( QCALENDARWIDGET_VERTICALHEADERFORMAT )
{
  auto obj = qobject_cast< QCalendarWidget * >( Qt5xHb::getQObjectPointerFromSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RENUM( obj->verticalHeaderFormat() );
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
QTextCharFormat weekdayTextFormat( Qt::DayOfWeek dayOfWeek ) const
*/
HB_FUNC_STATIC( QCALENDARWIDGET_WEEKDAYTEXTFORMAT )
{
  auto obj = qobject_cast< QCalendarWidget * >( Qt5xHb::getQObjectPointerFromSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && HB_ISNUM( 1 ) )
    {
#endif
      auto ptr = new QTextCharFormat( obj->weekdayTextFormat( static_cast<Qt::DayOfWeek>( hb_parni( 1 ) ) ) );
      Qt5xHb::createReturnClass( ptr, "QTEXTCHARFORMAT", true );
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
int yearShown() const
*/
HB_FUNC_STATIC( QCALENDARWIDGET_YEARSHOWN )
{
  auto obj = qobject_cast< QCalendarWidget * >( Qt5xHb::getQObjectPointerFromSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RINT( obj->yearShown() );
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
virtual QSize minimumSizeHint() const
*/
HB_FUNC_STATIC( QCALENDARWIDGET_MINIMUMSIZEHINT )
{
  auto obj = qobject_cast< QCalendarWidget * >( Qt5xHb::getQObjectPointerFromSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      auto ptr = new QSize( obj->minimumSizeHint() );
      Qt5xHb::createReturnClass( ptr, "QSIZE", true );
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
virtual QSize sizeHint() const
*/
HB_FUNC_STATIC( QCALENDARWIDGET_SIZEHINT )
{
  auto obj = qobject_cast< QCalendarWidget * >( Qt5xHb::getQObjectPointerFromSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      auto ptr = new QSize( obj->sizeHint() );
      Qt5xHb::createReturnClass( ptr, "QSIZE", true );
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
void setCurrentPage( int year, int month )
*/
HB_FUNC_STATIC( QCALENDARWIDGET_SETCURRENTPAGE )
{
  auto obj = qobject_cast< QCalendarWidget * >( Qt5xHb::getQObjectPointerFromSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 2 ) && HB_ISNUM( 1 ) && HB_ISNUM( 2 ) )
    {
#endif
      obj->setCurrentPage( PINT( 1 ), PINT( 2 ) );
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
void setDateRange( const QDate & min, const QDate & max )
*/
HB_FUNC_STATIC( QCALENDARWIDGET_SETDATERANGE )
{
  auto obj = qobject_cast< QCalendarWidget * >( Qt5xHb::getQObjectPointerFromSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 2 ) && ISQDATE( 1 ) && ISQDATE( 2 ) )
    {
#endif
      obj->setDateRange( *PQDATE( 1 ), *PQDATE( 2 ) );
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
void setGridVisible( bool show )
*/
HB_FUNC_STATIC( QCALENDARWIDGET_SETGRIDVISIBLE )
{
  auto obj = qobject_cast< QCalendarWidget * >( Qt5xHb::getQObjectPointerFromSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && HB_ISLOG( 1 ) )
    {
#endif
      obj->setGridVisible( PBOOL( 1 ) );
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
void setNavigationBarVisible( bool visible )
*/
HB_FUNC_STATIC( QCALENDARWIDGET_SETNAVIGATIONBARVISIBLE )
{
  auto obj = qobject_cast< QCalendarWidget * >( Qt5xHb::getQObjectPointerFromSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && HB_ISLOG( 1 ) )
    {
#endif
      obj->setNavigationBarVisible( PBOOL( 1 ) );
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
void setSelectedDate( const QDate & date )
*/
HB_FUNC_STATIC( QCALENDARWIDGET_SETSELECTEDDATE )
{
  auto obj = qobject_cast< QCalendarWidget * >( Qt5xHb::getQObjectPointerFromSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISQDATE( 1 ) )
    {
#endif
      obj->setSelectedDate( *PQDATE( 1 ) );
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
void showNextMonth()
*/
HB_FUNC_STATIC( QCALENDARWIDGET_SHOWNEXTMONTH )
{
  auto obj = qobject_cast< QCalendarWidget * >( Qt5xHb::getQObjectPointerFromSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      obj->showNextMonth();
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
void showNextYear()
*/
HB_FUNC_STATIC( QCALENDARWIDGET_SHOWNEXTYEAR )
{
  auto obj = qobject_cast< QCalendarWidget * >( Qt5xHb::getQObjectPointerFromSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      obj->showNextYear();
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
void showPreviousMonth()
*/
HB_FUNC_STATIC( QCALENDARWIDGET_SHOWPREVIOUSMONTH )
{
  auto obj = qobject_cast< QCalendarWidget * >( Qt5xHb::getQObjectPointerFromSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      obj->showPreviousMonth();
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
void showPreviousYear()
*/
HB_FUNC_STATIC( QCALENDARWIDGET_SHOWPREVIOUSYEAR )
{
  auto obj = qobject_cast< QCalendarWidget * >( Qt5xHb::getQObjectPointerFromSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      obj->showPreviousYear();
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
void showSelectedDate()
*/
HB_FUNC_STATIC( QCALENDARWIDGET_SHOWSELECTEDDATE )
{
  auto obj = qobject_cast< QCalendarWidget * >( Qt5xHb::getQObjectPointerFromSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      obj->showSelectedDate();
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
void showToday()
*/
HB_FUNC_STATIC( QCALENDARWIDGET_SHOWTODAY )
{
  auto obj = qobject_cast< QCalendarWidget * >( Qt5xHb::getQObjectPointerFromSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      obj->showToday();
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
void activated( const QDate & date )
*/
HB_FUNC_STATIC( QCALENDARWIDGET_ONACTIVATED )
{
  auto sender = (QCalendarWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("activated(QDate)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QCalendarWidget::activated, 
                                                              [sender, indexOfCodeBlock]
                                                              (const QDate & arg1) {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject( (QObject *) sender, "QCALENDARWIDGET" );
            PHB_ITEM pArg1 = Qt5xHb::Signals_return_object( (void *) &arg1, "QDATE" );
            hb_vmEvalBlockV( cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Qt5xHb::Signals_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Qt5xHb::Signals_disconnection( sender, indexOfSignal );

      QObject::disconnect( Qt5xHb::Signals_get_connection( sender, indexOfSignal ) );

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
void clicked( const QDate & date )
*/
HB_FUNC_STATIC( QCALENDARWIDGET_ONCLICKED )
{
  auto sender = (QCalendarWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("clicked(QDate)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QCalendarWidget::clicked, 
                                                              [sender, indexOfCodeBlock]
                                                              (const QDate & arg1) {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject( (QObject *) sender, "QCALENDARWIDGET" );
            PHB_ITEM pArg1 = Qt5xHb::Signals_return_object( (void *) &arg1, "QDATE" );
            hb_vmEvalBlockV( cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Qt5xHb::Signals_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Qt5xHb::Signals_disconnection( sender, indexOfSignal );

      QObject::disconnect( Qt5xHb::Signals_get_connection( sender, indexOfSignal ) );

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
void currentPageChanged( int year, int month )
*/
HB_FUNC_STATIC( QCALENDARWIDGET_ONCURRENTPAGECHANGED )
{
  auto sender = (QCalendarWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("currentPageChanged(int,int)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QCalendarWidget::currentPageChanged, 
                                                              [sender, indexOfCodeBlock]
                                                              (int arg1, int arg2) {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject( (QObject *) sender, "QCALENDARWIDGET" );
            PHB_ITEM pArg1 = hb_itemPutNI( nullptr, arg1 );
            PHB_ITEM pArg2 = hb_itemPutNI( nullptr, arg2 );
            hb_vmEvalBlockV( cb, 3, pSender, pArg1, pArg2 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
            hb_itemRelease( pArg2 );
          }

        });

        Qt5xHb::Signals_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Qt5xHb::Signals_disconnection( sender, indexOfSignal );

      QObject::disconnect( Qt5xHb::Signals_get_connection( sender, indexOfSignal ) );

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
void selectionChanged()
*/
HB_FUNC_STATIC( QCALENDARWIDGET_ONSELECTIONCHANGED )
{
  auto sender = (QCalendarWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("selectionChanged()");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QCalendarWidget::selectionChanged, 
                                                              [sender, indexOfCodeBlock]
                                                              () {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject( (QObject *) sender, "QCALENDARWIDGET" );
            hb_vmEvalBlockV( cb, 1, pSender );
            hb_itemRelease( pSender );
          }

        });

        Qt5xHb::Signals_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Qt5xHb::Signals_disconnection( sender, indexOfSignal );

      QObject::disconnect( Qt5xHb::Signals_get_connection( sender, indexOfSignal ) );

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
