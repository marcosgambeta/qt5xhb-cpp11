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

$beginClassFrom=QGraphicsItem

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QGraphicsItemGroup ( QGraphicsItem * parent = nullptr )
$constructor=|new|QGraphicsItem *=nullptr

$deleteMethod

$prototype=void addToGroup ( QGraphicsItem * item )
$method=|void|addToGroup|QGraphicsItem *

$prototype=void removeFromGroup ( QGraphicsItem * item )
$method=|void|removeFromGroup|QGraphicsItem *

$prototypeV2=virtual QRectF boundingRect() const

$prototype=virtual bool isObscuredBy ( const QGraphicsItem * item ) const
$virtualMethod=|bool|isObscuredBy|const QGraphicsItem *

$prototypeV2=virtual QPainterPath opaqueArea() const

$prototype=virtual void paint ( QPainter * painter, const QStyleOptionGraphicsItem * option, QWidget * widget = nullptr )
$virtualMethod=|void|paint|QPainter *,const QStyleOptionGraphicsItem *,QWidget *=nullptr

$prototypeV2=virtual int type() const

#pragma ENDDUMP
