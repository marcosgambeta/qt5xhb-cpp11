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

$prototype=QSplashScreen ( const QPixmap & pixmap = QPixmap(), Qt::WindowFlags f = 0 )
$internalConstructor=|new1|const QPixmap &=QPixmap(),Qt::WindowFlags=0

$prototype=QSplashScreen ( QWidget * parent, const QPixmap & pixmap = QPixmap(), Qt::WindowFlags f = 0 )
$internalConstructor=|new2|QWidget *,const QPixmap &=QPixmap(),Qt::WindowFlags=0

/*
[1]QSplashScreen ( const QPixmap & pixmap = QPixmap(), Qt::WindowFlags f = 0 )
[2]QSplashScreen ( QWidget * parent, const QPixmap & pixmap = QPixmap(), Qt::WindowFlags f = 0 )
*/

HB_FUNC_STATIC( QSPLASHSCREEN_NEW )
{
  if( ISBETWEEN(0,2) && (ISQPIXMAP(1)||ISNIL(1)) && ISOPTNUM(2) )
  {
    QSplashScreen_new1();
  }
  else if( ISBETWEEN(1,3) && ISQWIDGET(1) && (ISQPIXMAP(2)||ISNIL(2)) && ISOPTNUM(3) )
  {
    QSplashScreen_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=void finish ( QWidget * mainWin )
$method=|void|finish|QWidget *

$prototypeV2=const QPixmap pixmap() const

$prototype=void setPixmap ( const QPixmap & pixmap )
$method=|void|setPixmap|const QPixmap &

$prototypeV2=void repaint()

$prototypeV2=void clearMessage()

$prototype=void showMessage ( const QString & message, int alignment = Qt::AlignLeft, const QColor & color = Qt::black )
$method=|void|showMessage|const QString &,int=Qt::AlignLeft,const QColor &=Qt::black

%%
%% SIGNALS
%%

$prototype=void messageChanged( const QString & message )
$signalMethod=|void|messageChanged|const QString &

#pragma ENDDUMP
