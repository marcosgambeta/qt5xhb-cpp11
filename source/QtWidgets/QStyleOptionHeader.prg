/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QICON
#endif

CLASS QStyleOptionHeader INHERIT QStyleOption

   METHOD new
   METHOD section
   METHOD setSection
   METHOD text
   METHOD setText
   METHOD textAlignment
   METHOD setTextAlignment
   METHOD icon
   METHOD setIcon
   METHOD iconAlignment
   METHOD setIconAlignment
   METHOD position
   METHOD setPosition
   METHOD selectedPosition
   METHOD setSelectedPosition
   METHOD sortIndicator
   METHOD setSortIndicator
   METHOD orientation
   METHOD setOrientation

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QStyleOptionHeader
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtWidgets/QStyleOptionHeader>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtWidgets/QStyleOptionHeader>
#endif

/*
QStyleOptionHeader()
*/
void QStyleOptionHeader_new1()
{
  auto obj = new QStyleOptionHeader();
  Qt5xHb::returnNewObject( obj, true );
}

/*
QStyleOptionHeader(const QStyleOptionHeader &other)
*/
void QStyleOptionHeader_new2()
{
  auto obj = new QStyleOptionHeader( *PQSTYLEOPTIONHEADER(1) );
  Qt5xHb::returnNewObject( obj, true );
}

/*
QStyleOptionHeader(int version) [protected]
*/

/*
[1]QStyleOptionHeader()
[2]QStyleOptionHeader(const QStyleOptionHeader &other)
[3]QStyleOptionHeader(int version) [protected]
*/

HB_FUNC_STATIC( QSTYLEOPTIONHEADER_NEW )
{
  if( ISNUMPAR(0) )
  {
    QStyleOptionHeader_new1();
  }
  else if( ISNUMPAR(1) && ISQSTYLEOPTIONHEADER(1) )
  {
    QStyleOptionHeader_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
int section
*/
HB_FUNC_STATIC( QSTYLEOPTIONHEADER_SECTION )
{
  auto obj = (QStyleOptionHeader *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->section );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONHEADER_SETSECTION )
{
  auto obj = (QStyleOptionHeader *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->section= PINT(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString text
*/
HB_FUNC_STATIC( QSTYLEOPTIONHEADER_TEXT )
{
  auto obj = (QStyleOptionHeader *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->text );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONHEADER_SETTEXT )
{
  auto obj = (QStyleOptionHeader *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->text= PQSTRING(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
Qt::Alignment textAlignment
*/
HB_FUNC_STATIC( QSTYLEOPTIONHEADER_TEXTALIGNMENT )
{
  auto obj = (QStyleOptionHeader *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->textAlignment );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONHEADER_SETTEXTALIGNMENT )
{
  auto obj = (QStyleOptionHeader *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->textAlignment= (Qt::Alignment) hb_parni(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QIcon icon
*/
HB_FUNC_STATIC( QSTYLEOPTIONHEADER_ICON )
{
  auto obj = (QStyleOptionHeader *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    if( ISNUMPAR(0) )
    {
      auto ptr = new QIcon( obj->icon );
      Qt5xHb::createReturnClass( ptr, "QICON", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONHEADER_SETICON )
{
  auto obj = (QStyleOptionHeader *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    if( ISNUMPAR(1) && ISQICON(1) )
    {
      obj->icon= *PQICON(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
Qt::Alignment iconAlignment
*/
HB_FUNC_STATIC( QSTYLEOPTIONHEADER_ICONALIGNMENT )
{
  auto obj = (QStyleOptionHeader *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->iconAlignment );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONHEADER_SETICONALIGNMENT )
{
  auto obj = (QStyleOptionHeader *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->iconAlignment= (Qt::Alignment) hb_parni(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
SectionPosition position
*/
HB_FUNC_STATIC( QSTYLEOPTIONHEADER_POSITION )
{
  auto obj = (QStyleOptionHeader *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->position );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONHEADER_SETPOSITION )
{
  auto obj = (QStyleOptionHeader *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->position= (QStyleOptionHeader::SectionPosition) hb_parni(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
SelectedPosition selectedPosition
*/
HB_FUNC_STATIC( QSTYLEOPTIONHEADER_SELECTEDPOSITION )
{
  auto obj = (QStyleOptionHeader *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->selectedPosition );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONHEADER_SETSELECTEDPOSITION )
{
  auto obj = (QStyleOptionHeader *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->selectedPosition= (QStyleOptionHeader::SelectedPosition) hb_parni(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
SortIndicator sortIndicator
*/
HB_FUNC_STATIC( QSTYLEOPTIONHEADER_SORTINDICATOR )
{
  auto obj = (QStyleOptionHeader *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->sortIndicator );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONHEADER_SETSORTINDICATOR )
{
  auto obj = (QStyleOptionHeader *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->sortIndicator= (QStyleOptionHeader::SortIndicator) hb_parni(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
Qt::Orientation orientation
*/
HB_FUNC_STATIC( QSTYLEOPTIONHEADER_ORIENTATION )
{
  auto obj = (QStyleOptionHeader *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->orientation );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONHEADER_SETORIENTATION )
{
  auto obj = (QStyleOptionHeader *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->orientation= (Qt::Orientation) hb_parni(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
