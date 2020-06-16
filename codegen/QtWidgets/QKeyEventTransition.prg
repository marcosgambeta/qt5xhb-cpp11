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

$beginClassFrom=QEventTransition

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QKeyEventTransition ( QState * sourceState = nullptr )
$internalConstructor=|new1|QState *=nullptr

$prototype=QKeyEventTransition ( QObject * object, QEvent::Type type, int key, QState * sourceState = nullptr )
$internalConstructor=|new2|QObject *,QEvent::Type,int,QState *=nullptr

/*
[1]QKeyEventTransition ( QState * sourceState = nullptr )
[2]QKeyEventTransition ( QObject * object, QEvent::Type type, int key, QState * sourceState = nullptr )
*/

HB_FUNC_STATIC( QKEYEVENTTRANSITION_NEW )
{
  if( ISBETWEEN(0,1) && (ISQSTATE(1)||ISNIL(1)) )
  {
    QKeyEventTransition_new1();
  }
  else if( ISBETWEEN(3,4) && ISQOBJECT(1) && ISNUM(2) && ISNUM(3) && (ISQSTATE(4)||ISNIL(4)) )
  {
    QKeyEventTransition_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=int key() const

$prototypeV2=Qt::KeyboardModifiers modifierMask() const

$prototype=void setKey ( int key )
$method=|void|setKey|int

$prototype=void setModifierMask ( Qt::KeyboardModifiers modifierMask )
$method=|void|setModifierMask|Qt::KeyboardModifiers

#pragma ENDDUMP
