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

$beginClassFrom=QAbstractGraphicsShapeItem

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QGraphicsPolygonItem ( QGraphicsItem * parent = nullptr )
$internalConstructor=|new1|QGraphicsItem *=nullptr

$prototype=QGraphicsPolygonItem ( const QPolygonF & polygon, QGraphicsItem * parent = nullptr )
$internalConstructor=|new2|const QPolygonF &,QGraphicsItem *=nullptr

/*
[1]QGraphicsPolygonItem ( QGraphicsItem * parent = nullptr )
[2]QGraphicsPolygonItem ( const QPolygonF & polygon, QGraphicsItem * parent = nullptr )
*/

HB_FUNC_STATIC( QGRAPHICSPOLYGONITEM_NEW )
{
  if( ISBETWEEN(0,1) && (ISQGRAPHICSITEM(1)||ISNIL(1)) )
  {
    QGraphicsPolygonItem_new1();
  }
  else if( ISBETWEEN(1,2) && ISQPOLYGONF(1) && (ISQGRAPHICSITEM(2)||ISNIL(2)) )
  {
    QGraphicsPolygonItem_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=Qt::FillRule fillRule() const

$prototypeV2=QPolygonF polygon() const

$prototype=void setFillRule ( Qt::FillRule rule )
$method=|void|setFillRule|Qt::FillRule

$prototype=void setPolygon ( const QPolygonF & polygon )
$method=|void|setPolygon|const QPolygonF &

$prototypeV2=virtual QRectF boundingRect() const

$prototype=virtual bool contains ( const QPointF & point ) const
$virtualMethod=|bool|contains|const QPointF &

$prototype=virtual bool isObscuredBy ( const QGraphicsItem * item ) const
$virtualMethod=|bool|isObscuredBy|const QGraphicsItem *

$prototypeV2=virtual QPainterPath opaqueArea() const

$prototype=virtual void paint ( QPainter * painter, const QStyleOptionGraphicsItem * option, QWidget * widget = nullptr )
$virtualMethod=|void|paint|QPainter *,const QStyleOptionGraphicsItem *,QWidget *=nullptr

$prototypeV2=virtual QPainterPath shape() const

$prototypeV2=virtual int type() const

#pragma ENDDUMP
