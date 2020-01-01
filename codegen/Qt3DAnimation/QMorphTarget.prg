%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=Qt3DAnimation

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QMorphTarget(QObject *parent = nullptr)

$deleteMethod

%%
%% Q_PROPERTY(QStringList attributeNames READ attributeNames NOTIFY attributeNamesChanged)
%%

$prototype=QStringList attributeNames() const

%%
%%
%%

$prototype=QVector<Qt3DRender::QAttribute *> attributeList() const
$prototype=void setAttributes(const QVector<Qt3DRender::QAttribute *> &attributes)
$prototype=void addAttribute(Qt3DRender::QAttribute *attribute)
$prototype=void removeAttribute(Qt3DRender::QAttribute *attribute)
$prototype=Q_INVOKABLE static QMorphTarget *fromGeometry(Qt3DRender::QGeometry *geometry, const QStringList &attributes)

%%
%% SIGNALS
%%

$prototype=void attributeNamesChanged( const QStringList & attributeNames )
$signalMethod=|void|attributeNamesChanged|const QStringList &

#pragma ENDDUMP
