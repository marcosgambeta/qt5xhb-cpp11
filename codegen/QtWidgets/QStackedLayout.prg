%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWidgets

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QLayout

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QStackedLayout ()
$internalConstructor=|new1|

$prototype=QStackedLayout ( QWidget * parent )
$internalConstructor=|new2|QWidget *

$prototype=QStackedLayout ( QLayout * parentLayout )
$internalConstructor=|new3|QLayout *

/*
[1]QStackedLayout ()
[2]QStackedLayout ( QWidget * parent )
[3]QStackedLayout ( QLayout * parentLayout )
*/

HB_FUNC_STATIC( QSTACKEDLAYOUT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QStackedLayout_new1();
  }
  else if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    QStackedLayout_new2();
  }
  else if( ISNUMPAR(1) && ISQLAYOUT(1) )
  {
    QStackedLayout_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=int addWidget ( QWidget * widget )
$method=|int|addWidget|QWidget *

$prototypeV2=int currentIndex() const

$prototypeV2=QWidget * currentWidget() const

$prototype=int insertWidget ( int index, QWidget * widget )
$method=|int|insertWidget|int,QWidget *

$prototype=void setStackingMode ( StackingMode stackingMode )
$method=|void|setStackingMode|QStackedLayout::StackingMode

$prototypeV2=QStackedLayout::StackingMode stackingMode() const

$prototype=QWidget * widget ( int index ) const
$method=|QWidget *|widget|int

$prototype=void setCurrentIndex ( int index )
$method=|void|setCurrentIndex|int

$prototype=void setCurrentWidget ( QWidget * widget )
$method=|void|setCurrentWidget|QWidget *

%%
%% SIGNALS
%%

$prototype=void currentChanged(int index)
$signalMethod=|void|currentChanged|int

$prototype=void widgetRemoved(int index)
$signalMethod=|void|widgetRemoved|int

#pragma ENDDUMP
