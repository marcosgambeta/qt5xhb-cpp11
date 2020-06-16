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

$beginClassFrom=QWidget

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtWidgets/QPushButton>

$prototype=QDialogButtonBox ( QWidget * parent = nullptr )
$internalConstructor=|new1|QWidget *=nullptr

$prototype=QDialogButtonBox ( Qt::Orientation orientation, QWidget * parent = nullptr )
$internalConstructor=|new2|Qt::Orientation,QWidget *=nullptr

$prototype=QDialogButtonBox ( StandardButtons buttons, Qt::Orientation orientation = Qt::Horizontal, QWidget * parent = nullptr )
$internalConstructor=|new3|QDialogButtonBox::StandardButtons,Qt::Orientation=Qt::Horizontal,QWidget *=nullptr

/*
[1]QDialogButtonBox ( QWidget * parent = nullptr )
[2]QDialogButtonBox ( Qt::Orientation orientation, QWidget * parent = nullptr )
[3]QDialogButtonBox ( StandardButtons buttons, Qt::Orientation orientation = Qt::Horizontal, QWidget * parent = nullptr )
*/

HB_FUNC_STATIC( QDIALOGBUTTONBOX_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQWIDGET(1) )
  {
    QDialogButtonBox_new1();
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && ISOPTQWIDGET(2) )
  {
    QDialogButtonBox_new2();
  }
  else if( ISBETWEEN(1,3) && ISNUM(1) && ISOPTNUM(2) && ISOPTQWIDGET(3) )
  {
    QDialogButtonBox_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=void addButton ( QAbstractButton * button, ButtonRole role )
$internalMethod=|void|addButton,addButton1|QAbstractButton *,QDialogButtonBox::ButtonRole

$prototype=QPushButton * addButton ( const QString & text, ButtonRole role )
$internalMethod=|QPushButton *|addButton,addButton2|const QString &,QDialogButtonBox::ButtonRole

$prototype=QPushButton * addButton ( StandardButton button )
$internalMethod=|QPushButton *|addButton,addButton3|QDialogButtonBox::StandardButton

/*
[1]void addButton ( QAbstractButton * button, ButtonRole role )
[2]QPushButton * addButton ( const QString & text, ButtonRole role )
[3]QPushButton * addButton ( StandardButton button )
*/

HB_FUNC_STATIC( QDIALOGBUTTONBOX_ADDBUTTON )
{
  if( ISNUMPAR(2) && ISQABSTRACTBUTTON(1) && ISNUM(2) )
  {
    QDialogButtonBox_addButton1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    QDialogButtonBox_addButton2();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QDialogButtonBox_addButton3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=addButton

$prototype=QPushButton * button ( StandardButton which ) const
$method=|QPushButton *|button|QDialogButtonBox::StandardButton

$prototype=ButtonRole buttonRole ( QAbstractButton * button ) const
$method=|QDialogButtonBox::ButtonRole|buttonRole|QAbstractButton *

$prototypeV2=bool centerButtons() const

$prototypeV2=void clear()

$prototypeV2=Qt::Orientation orientation() const

$prototype=void removeButton ( QAbstractButton * button )
$method=|void|removeButton|QAbstractButton *

$prototype=void setCenterButtons ( bool center )
$method=|void|setCenterButtons|bool

$prototype=void setOrientation ( Qt::Orientation orientation )
$method=|void|setOrientation|Qt::Orientation

$prototype=void setStandardButtons ( StandardButtons buttons )
$method=|void|setStandardButtons|QDialogButtonBox::StandardButtons

$prototype=StandardButton standardButton ( QAbstractButton * button ) const
$method=|QDialogButtonBox::StandardButton|standardButton|QAbstractButton *

$prototypeV2=QDialogButtonBox::StandardButtons standardButtons() const

%%
%% SIGNALS
%%

$prototype=void accepted()
$signalMethod=|void|accepted|

$prototype=void clicked( QAbstractButton * button )
$signalMethod=|void|clicked|QAbstractButton *

$prototype=void helpRequested()
$signalMethod=|void|helpRequested|

$prototype=void rejected()
$signalMethod=|void|rejected|

#pragma ENDDUMP
