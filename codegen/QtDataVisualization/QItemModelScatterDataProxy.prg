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

$beginClassFrom=QScatterDataProxy

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

using namespace QtDataVisualization;

$prototype=explicit QItemModelScatterDataProxy(QObject *parent = nullptr)
$internalConstructor=|new1|QObject *=nullptr

$prototype=explicit QItemModelScatterDataProxy(QAbstractItemModel *itemModel, QObject *parent = nullptr)
$internalConstructor=|new2|QAbstractItemModel *,QObject *=nullptr

$prototype=explicit QItemModelScatterDataProxy(QAbstractItemModel *itemModel, const QString &xPosRole, const QString &yPosRole, const QString &zPosRole, QObject *parent = nullptr)
$internalConstructor=|new3|QAbstractItemModel *,const QString &,const QString &,const QString &,QObject *=nullptr

$prototype=explicit QItemModelScatterDataProxy(QAbstractItemModel *itemModel, const QString &xPosRole, const QString &yPosRole, const QString &zPosRole, const QString &rotationRole, QObject *parent = nullptr)
$internalConstructor=|new4|QAbstractItemModel *,const QString &,const QString &,const QString &,const QString &,QObject *=nullptr

/*
[1]explicit QItemModelScatterDataProxy(QObject *parent = nullptr)
[2]explicit QItemModelScatterDataProxy(QAbstractItemModel *itemModel, QObject *parent = nullptr)
[3]explicit QItemModelScatterDataProxy(QAbstractItemModel *itemModel, const QString &xPosRole, const QString &yPosRole, const QString &zPosRole, QObject *parent = nullptr)
[4]explicit QItemModelScatterDataProxy(QAbstractItemModel *itemModel, const QString &xPosRole, const QString &yPosRole, const QString &zPosRole, const QString &rotationRole, QObject *parent = nullptr)
*/

HB_FUNC_STATIC( QITEMMODELSCATTERDATAPROXY_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QItemModelScatterDataProxy_new1();
  }
  else if( ISBETWEEN(1,2) && ISQABSTRACTITEMMODEL(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    QItemModelScatterDataProxy_new2();
  }
  else if( ISBETWEEN(4,5) && ISQABSTRACTITEMMODEL(1) && ISCHAR(2) && ISCHAR(3) && ISCHAR(4) && (ISQOBJECT(5)||ISNIL(5)) )
  {
    QItemModelScatterDataProxy_new3();
  }
  else if( ISBETWEEN(5,6) && ISQABSTRACTITEMMODEL(1) && ISCHAR(2) && ISCHAR(3) && ISCHAR(4) && ISCHAR(5) && (ISQOBJECT(6)||ISNIL(6)) )
  {
    QItemModelScatterDataProxy_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=virtual ~QItemModelScatterDataProxy()
$deleteMethod

%%
%% Q_PROPERTY(QAbstractItemModel* itemModel READ itemModel WRITE setItemModel NOTIFY itemModelChanged)
%%

$prototype=QAbstractItemModel *itemModel() const
$method=|QAbstractItemModel *|itemModel|

$prototype=void setItemModel(QAbstractItemModel *itemModel)
$method=|void|setItemModel|QAbstractItemModel *

%%
%% Q_PROPERTY(QString xPosRole READ xPosRole WRITE setXPosRole NOTIFY xPosRoleChanged)
%%

$prototype=QString xPosRole() const
$method=|QString|xPosRole|

$prototype=void setXPosRole(const QString &role)
$method=|void|setXPosRole|const QString &

%%
%% Q_PROPERTY(QString yPosRole READ yPosRole WRITE setYPosRole NOTIFY yPosRoleChanged)
%%

$prototype=QString yPosRole() const
$method=|QString|yPosRole|

$prototype=void setYPosRole(const QString &role)
$method=|void|setYPosRole|const QString &

%%
%% Q_PROPERTY(QString zPosRole READ zPosRole WRITE setZPosRole NOTIFY zPosRoleChanged)
%%

$prototype=QString zPosRole() const
$method=|QString|zPosRole|

$prototype=void setZPosRole(const QString &role)
$method=|void|setZPosRole|const QString &

%%
%% Q_PROPERTY(QString rotationRole READ rotationRole WRITE setRotationRole NOTIFY rotationRoleChanged)
%%

$prototype=QString rotationRole() const
$method=|QString|rotationRole|

$prototype=void setRotationRole(const QString &role)
$method=|void|setRotationRole|const QString &

%%
%% Q_PROPERTY(QRegExp xPosRolePattern READ xPosRolePattern WRITE setXPosRolePattern NOTIFY xPosRolePatternChanged REVISION 1)
%%

$prototype=QRegExp xPosRolePattern() const
$method=|QRegExp|xPosRolePattern|

$prototype=void setXPosRolePattern(const QRegExp &pattern)
$method=|void|setXPosRolePattern|const QRegExp &

%%
%% Q_PROPERTY(QRegExp yPosRolePattern READ yPosRolePattern WRITE setYPosRolePattern NOTIFY yPosRolePatternChanged REVISION 1)
%%

$prototype=QRegExp yPosRolePattern() const
$method=|QRegExp|yPosRolePattern|

$prototype=void setYPosRolePattern(const QRegExp &pattern)
$method=|void|setYPosRolePattern|const QRegExp &

%%
%% Q_PROPERTY(QRegExp zPosRolePattern READ zPosRolePattern WRITE setZPosRolePattern NOTIFY zPosRolePatternChanged REVISION 1)
%%

$prototype=QRegExp zPosRolePattern() const
$method=|QRegExp|zPosRolePattern|

$prototype=void setZPosRolePattern(const QRegExp &pattern)
$method=|void|setZPosRolePattern|const QRegExp &

%%
%% Q_PROPERTY(QRegExp rotationRolePattern READ rotationRolePattern WRITE setRotationRolePattern NOTIFY rotationRolePatternChanged REVISION 1)
%%

$prototype=QRegExp rotationRolePattern() const
$method=|QRegExp|rotationRolePattern|

$prototype=void setRotationRolePattern(const QRegExp &pattern)
$method=|void|setRotationRolePattern|const QRegExp &

%%
%% Q_PROPERTY(QString xPosRoleReplace READ xPosRoleReplace WRITE setXPosRoleReplace NOTIFY xPosRoleReplaceChanged REVISION 1)
%%

$prototype=QString xPosRoleReplace() const
$method=|QString|xPosRoleReplace|

$prototype=void setXPosRoleReplace(const QString &replace)
$method=|void|setXPosRoleReplace|const QString &

%%
%% Q_PROPERTY(QString yPosRoleReplace READ yPosRoleReplace WRITE setYPosRoleReplace NOTIFY yPosRoleReplaceChanged REVISION 1)
%%

$prototype=QString yPosRoleReplace() const
$method=|QString|yPosRoleReplace|

$prototype=void setYPosRoleReplace(const QString &replace)
$method=|void|setYPosRoleReplace|const QString &

%%
%% Q_PROPERTY(QString zPosRoleReplace READ zPosRoleReplace WRITE setZPosRoleReplace NOTIFY zPosRoleReplaceChanged REVISION 1)
%%

$prototype=QString zPosRoleReplace() const
$method=|QString|zPosRoleReplace|

$prototype=void setZPosRoleReplace(const QString &replace)
$method=|void|setZPosRoleReplace|const QString &

%%
%% Q_PROPERTY(QString rotationRoleReplace READ rotationRoleReplace WRITE setRotationRoleReplace NOTIFY rotationRoleReplaceChanged REVISION 1)
%%

$prototype=QString rotationRoleReplace() const
$method=|QString|rotationRoleReplace|

$prototype=void setRotationRoleReplace(const QString &replace)
$method=|void|setRotationRoleReplace|const QString &

%%
%%
%%

$prototype=void remap(const QString &xPosRole, const QString &yPosRole, const QString &zPosRole, const QString &rotationRole)
$method=|void|remap|const QString &,const QString &,const QString &,const QString &

%%
%% SIGNALS
%%

%% using namespace QtDataVisualization;

$prototype=void itemModelChanged( const QAbstractItemModel * itemModel )
$signalMethod=|void|itemModelChanged|const QAbstractItemModel *

$prototype=void rotationRoleChanged( const QString & role )
$signalMethod=|void|rotationRoleChanged|const QString &

$prototype=void rotationRolePatternChanged( const QRegExp & pattern )
$signalMethod=|void|rotationRolePatternChanged|const QRegExp &

$prototype=void rotationRoleReplaceChanged( const QString & replace )
$signalMethod=|void|rotationRoleReplaceChanged|const QString &

$prototype=void xPosRoleChanged( const QString & role )
$signalMethod=|void|xPosRoleChanged|const QString &

$prototype=void xPosRolePatternChanged( const QRegExp & pattern )
$signalMethod=|void|xPosRolePatternChanged|const QRegExp &

$prototype=void xPosRoleReplaceChanged( const QString & replace )
$signalMethod=|void|xPosRoleReplaceChanged|const QString &

$prototype=void yPosRoleChanged( const QString & role )
$signalMethod=|void|yPosRoleChanged|const QString &

$prototype=void yPosRolePatternChanged( const QRegExp & pattern )
$signalMethod=|void|yPosRolePatternChanged|const QRegExp &

$prototype=void yPosRoleReplaceChanged( const QString & replace )
$signalMethod=|void|yPosRoleReplaceChanged|const QString &

$prototype=void zPosRoleChanged( const QString & role )
$signalMethod=|void|zPosRoleChanged|const QString &

$prototype=void zPosRolePatternChanged( const QRegExp & pattern )
$signalMethod=|void|zPosRolePatternChanged|const QRegExp &

$prototype=void zPosRoleReplaceChanged( const QString & replace )
$signalMethod=|void|zPosRoleReplaceChanged|const QString &

#pragma ENDDUMP
