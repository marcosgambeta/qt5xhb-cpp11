%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtHelp

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

$deleteMethod

$prototype=QUrl linkAt ( const QPoint & point )
$method=|QUrl|linkAt|const QPoint &

%%
%% SIGNALS
%%

$prototype=void requestShowLink( const QUrl & link )
$signalMethod=|void|requestShowLink|const QUrl &

#pragma ENDDUMP
