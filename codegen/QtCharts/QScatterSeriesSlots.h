%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCharts

$header

$includes=5,7,0

using namespace QtCharts;

$beginSlotsClass
$signal=5,7,0|borderColorChanged( QColor color )
$signal=5,7,0|colorChanged( QColor color )
$signal=5,7,0|markerShapeChanged( QScatterSeries::MarkerShape shape )
$signal=5,7,0|markerSizeChanged( qreal size )
$endSlotsClass
