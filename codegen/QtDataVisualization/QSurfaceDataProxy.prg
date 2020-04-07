%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtDataVisualization
$added=5,7,0

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QAbstractDataProxy

$addMethods

$addSignals

$endClass

$destructor

%% TODO: implementar
%% namespace QtDataVisualization {
%% // typedefs introduced this way because QDoc doesn't understand namespace macros
%% typedef QVector<QSurfaceDataItem> QSurfaceDataRow;
%% typedef QList<QSurfaceDataRow *> QSurfaceDataArray;
%% }

#pragma BEGINDUMP

$includes

#include <QtDataVisualization/QSurface3DSeries>

using namespace QtDataVisualization;

$prototype=explicit QSurfaceDataProxy(QObject *parent = nullptr)
$constructor=|new|QObject *=nullptr

$prototype=explicit QSurfaceDataProxy(QSurfaceDataProxyPrivate *d, QObject *parent = nullptr) [protected]

$prototype=virtual ~QSurfaceDataProxy()
$deleteMethod

%%
%% Q_PROPERTY(int rowCount READ rowCount NOTIFY rowCountChanged)
%%

$prototype=int rowCount() const
$method=|int|rowCount|

%%
%% Q_PROPERTY(int columnCount READ columnCount NOTIFY columnCountChanged)
%%

$prototype=int columnCount() const
$method=|int|columnCount|

%%
%% Q_PROPERTY(QSurface3DSeries *series READ series NOTIFY seriesChanged)
%%

$prototype=QSurface3DSeries *series() const
$method=|QSurface3DSeries *|series|

%%
%%
%%

$prototype=const QSurfaceDataArray *array() const
%% TODO: implementar

$prototype=const QSurfaceDataItem *itemAt(int rowIndex, int columnIndex) const
$internalMethod=|const QSurfaceDataItem *|itemAt,itemAt1|int,int

$prototype=const QSurfaceDataItem *itemAt(const QPoint &position) const
$internalMethod=|const QSurfaceDataItem *|itemAt,itemAt2|const QPoint &

/*
[1]const QSurfaceDataItem *itemAt(int rowIndex, int columnIndex) const
[2]const QSurfaceDataItem *itemAt(const QPoint &position) const
*/

HB_FUNC_STATIC( QSURFACEDATAPROXY_ITEMAT )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QSurfaceDataProxy_itemAt1();
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QSurfaceDataProxy_itemAt2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=itemAt

$prototype=void resetArray(QSurfaceDataArray *newArray)
%% TODO: implementar

$prototype=void setRow(int rowIndex, QSurfaceDataRow *row)
%% TODO: implementar

$prototype=void setRows(int rowIndex, const QSurfaceDataArray &rows)
%% TODO: implementar

$prototype=void setItem(int rowIndex, int columnIndex, const QSurfaceDataItem &item)
$internalMethod=|void|setItem,setItem1|int,int,const QSurfaceDataItem &

$prototype=void setItem(const QPoint &position, const QSurfaceDataItem &item)
$internalMethod=|void|setItem,setItem2|const QPoint &,const QSurfaceDataItem &

/*
[1]void setItem(int rowIndex, int columnIndex, const QSurfaceDataItem &item)
[2]void setItem(const QPoint &position, const QSurfaceDataItem &item)
*/

HB_FUNC_STATIC( QSURFACEDATAPROXY_SETITEM )
{
  if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISQSURFACEDATAITEM(3) )
  {
    QSurfaceDataProxy_setItem1();
  }
  else if( ISNUMPAR(2) && ISQPOINT(1) && ISQSURFACEDATAITEM(2) )
  {
    QSurfaceDataProxy_setItem2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setItem

$prototype=int addRow(QSurfaceDataRow *row)
%% TODO: implementar

$prototype=int addRows(const QSurfaceDataArray &rows)
%% TODO: implementar

$prototype=void insertRow(int rowIndex, QSurfaceDataRow *row)
%% TODO: implementar

$prototype=void insertRows(int rowIndex, const QSurfaceDataArray &rows)
%% TODO: implementar

$prototype=void removeRows(int rowIndex, int removeCount)
$method=|void|removeRows|int,int

%%
%% SIGNALS
%%

%% using namespace QtDataVisualization;

$prototype=void arrayReset()
$signalMethod=|void|arrayReset|

$prototype=void columnCountChanged( int count )
$signalMethod=|void|columnCountChanged|int

$prototype=void itemChanged( int rowIndex, int columnIndex )
$signalMethod=|void|itemChanged|int,int

$prototype=void rowCountChanged( int count )
$signalMethod=|void|rowCountChanged|int

$prototype=void rowsAdded( int startIndex, int count )
$signalMethod=|void|rowsAdded|int,int

$prototype=void rowsChanged( int startIndex, int count )
$signalMethod=|void|rowsChanged|int,int

$prototype=void rowsInserted( int startIndex, int count )
$signalMethod=|void|rowsInserted|int,int

$prototype=void rowsRemoved( int startIndex, int count )
$signalMethod=|void|rowsRemoved|int,int

$prototype=void seriesChanged( QSurface3DSeries * series )
$signalMethod=|void|seriesChanged|QSurface3DSeries *

#pragma ENDDUMP
