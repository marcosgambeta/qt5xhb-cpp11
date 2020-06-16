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

$beginClassFrom=QGraphicsEffect

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QGraphicsDropShadowEffect ( QObject * parent = nullptr )
$constructor=|new|QObject *=nullptr

$deleteMethod

$prototypeV2=qreal blurRadius() const

$prototypeV2=QColor color() const

$prototypeV2=QPointF offset() const

$prototypeV2=qreal xOffset() const

$prototypeV2=qreal yOffset() const

$prototype=virtual QRectF boundingRectFor ( const QRectF & rect ) const
$virtualMethod=|QRectF|boundingRectFor|const QRectF &

$prototype=void setBlurRadius ( qreal blurRadius )
$method=|void|setBlurRadius|qreal

$prototype=void setColor ( const QColor & color )
$method=|void|setColor|const QColor &

$prototype=void setOffset ( const QPointF & ofs )
$internalMethod=|void|setOffset,setOffset1|const QPointF &

$prototype=void setOffset ( qreal dx, qreal dy )
$internalMethod=|void|setOffset,setOffset2|qreal,qreal

$prototype=void setOffset ( qreal d )
$internalMethod=|void|setOffset,setOffset3|qreal

/*
[1]void setOffset ( const QPointF & ofs )
[2]void setOffset ( qreal dx, qreal dy )
[3]void setOffset ( qreal d )
*/

HB_FUNC_STATIC( QGRAPHICSDROPSHADOWEFFECT_SETOFFSET )
{
  if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    QGraphicsDropShadowEffect_setOffset1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QGraphicsDropShadowEffect_setOffset2();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QGraphicsDropShadowEffect_setOffset3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setOffset

$prototype=void setXOffset ( qreal dx )
$method=|void|setXOffset|qreal

$prototype=void setYOffset ( qreal dy )
$method=|void|setYOffset|qreal

%%
%% SIGNALS
%%

$prototype=void blurRadiusChanged( qreal blurRadius )
$signalMethod=|void|blurRadiusChanged|qreal

$prototype=void colorChanged( const QColor & color )
$signalMethod=|void|colorChanged|const QColor &

$prototype=void offsetChanged( const QPointF & offset )
$signalMethod=|void|offsetChanged|const QPointF &

#pragma ENDDUMP
