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

$beginClassFrom=QGraphicsObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtGui/QFont>
#include <QtGui/QTextCursor>
#include <QtGui/QTextDocument>

$prototype=QGraphicsTextItem ( QGraphicsItem * parent = nullptr )
$internalConstructor=|new1|QGraphicsItem *=nullptr

$prototype=QGraphicsTextItem ( const QString & text, QGraphicsItem * parent = nullptr )
$internalConstructor=|new2|const QString &,QGraphicsItem *=nullptr

/*
[1]QGraphicsTextItem ( QGraphicsItem * parent = nullptr )
[2]QGraphicsTextItem ( const QString & text, QGraphicsItem * parent = nullptr )
*/

HB_FUNC_STATIC( QGRAPHICSTEXTITEM_NEW )
{
  if( ISBETWEEN(0,1) && (ISQGRAPHICSITEM(1)||ISNIL(1)) )
  {
    QGraphicsTextItem_new1();
  }
  else if( ISBETWEEN(1,2)&& ISCHAR(1) && (ISQGRAPHICSITEM(2)||ISNIL(2)) )
  {
    QGraphicsTextItem_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=void adjustSize()

$prototypeV2=QColor defaultTextColor() const

$prototypeV2=QTextDocument * document() const

$prototypeV2=QFont font() const

$prototypeV2=bool openExternalLinks() const

$prototype=void setDefaultTextColor ( const QColor & col )
$method=|void|setDefaultTextColor|const QColor &

$prototype=void setDocument ( QTextDocument * document )
$method=|void|setDocument|QTextDocument *

$prototype=void setFont ( const QFont & font )
$method=|void|setFont|const QFont &

$prototype=void setHtml ( const QString & text )
$method=|void|setHtml|const QString &

$prototype=void setOpenExternalLinks ( bool open )
$method=|void|setOpenExternalLinks|bool

$prototype=void setPlainText ( const QString & text )
$method=|void|setPlainText|const QString &

$prototype=void setTabChangesFocus ( bool b )
$method=|void|setTabChangesFocus|bool

$prototype=void setTextCursor ( const QTextCursor & cursor )
$method=|void|setTextCursor|const QTextCursor &

$prototype=void setTextInteractionFlags ( Qt::TextInteractionFlags flags )
$method=|void|setTextInteractionFlags|Qt::TextInteractionFlags

$prototype=void setTextWidth ( qreal width )
$method=|void|setTextWidth|qreal

$prototypeV2=bool tabChangesFocus() const

$prototypeV2=QTextCursor textCursor() const

$prototypeV2=Qt::TextInteractionFlags textInteractionFlags() const

$prototypeV2=qreal textWidth() const

$prototypeV2=QString toHtml() const

$prototypeV2=QString toPlainText() const

$prototypeV2=virtual QRectF boundingRect() const

$prototype=virtual bool contains ( const QPointF & point ) const
$virtualMethod=|bool|contains|const QPointF &

$prototype=virtual bool isObscuredBy ( const QGraphicsItem * item ) const
$virtualMethod=|bool|isObscuredBy|const QGraphicsItem *

$prototypeV2=virtual QPainterPath opaqueArea() const

$prototype=virtual void paint ( QPainter * painter, const QStyleOptionGraphicsItem * option, QWidget * widget )
$virtualMethod=|void|paint|QPainter *,const QStyleOptionGraphicsItem *,QWidget *

$prototypeV2=virtual QPainterPath shape() const

$prototypeV2=virtual int type() const

%%
%% SIGNALS
%%

$prototype=void linkActivated( const QString & link )
$signalMethod=|void|linkActivated|const QString &

$prototype=void linkHovered( const QString & link )
$signalMethod=|void|linkHovered|const QString &

#pragma ENDDUMP
