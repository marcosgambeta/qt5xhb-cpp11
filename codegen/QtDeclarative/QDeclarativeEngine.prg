%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtDeclarative

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

#include <QtCore/QStringList>
#include <QtDeclarative/QDeclarativeContext>
#include <QtNetwork/QNetworkAccessManager>

$prototype=QDeclarativeEngine ( QObject * parent = nullptr )
$constructor=|new|QObject *=nullptr

$deleteMethod

$prototype=void addImageProvider ( const QString & providerId, QDeclarativeImageProvider * provider )
$method=|void|addImageProvider|const QString &,QDeclarativeImageProvider *

$prototype=void addImportPath ( const QString & path )
$method=|void|addImportPath|const QString &

$prototype=void addPluginPath ( const QString & path )
$method=|void|addPluginPath|const QString &

$prototypeV2=QUrl baseUrl() const

$prototypeV2=void clearComponentCache()

$prototype=QDeclarativeImageProvider * imageProvider ( const QString & providerId ) const
$method=|QDeclarativeImageProvider *|imageProvider|const QString &

$prototypeV2=QStringList importPathList() const

$prototypeV2=QNetworkAccessManager * networkAccessManager() const

$prototypeV2=QDeclarativeNetworkAccessManagerFactory * networkAccessManagerFactory() const

$prototypeV2=QString offlineStoragePath() const

$prototypeV2=bool outputWarningsToStandardError() const

$prototypeV2=QStringList pluginPathList() const

$prototype=void removeImageProvider ( const QString & providerId )
$method=|void|removeImageProvider|const QString &

$prototypeV2=QDeclarativeContext * rootContext() const

$prototype=void setBaseUrl ( const QUrl & url )
$method=|void|setBaseUrl|const QUrl &

$prototype=void setImportPathList ( const QStringList & paths )
$method=|void|setImportPathList|const QStringList &

$prototype=void setNetworkAccessManagerFactory ( QDeclarativeNetworkAccessManagerFactory * factory )
$method=|void|setNetworkAccessManagerFactory|QDeclarativeNetworkAccessManagerFactory *

$prototype=void setOfflineStoragePath ( const QString & dir )
$method=|void|setOfflineStoragePath|const QString &

$prototype=void setOutputWarningsToStandardError ( bool enabled )
$method=|void|setOutputWarningsToStandardError|bool

$prototype=void setPluginPathList ( const QStringList & paths )
$method=|void|setPluginPathList|const QStringList &

$prototype=static QDeclarativeContext * contextForObject ( const QObject * object )
$staticMethod=|QDeclarativeContext *|contextForObject|const QObject *

$prototype=static ObjectOwnership objectOwnership ( QObject * object )
$staticMethod=|QDeclarativeEngine::ObjectOwnership|objectOwnership|QObject *

$prototype=static void setContextForObject ( QObject * object, QDeclarativeContext * context )
$staticMethod=|void|setContextForObject|QObject *,QDeclarativeContext *

$prototype=static void setObjectOwnership ( QObject * object, ObjectOwnership ownership )
$staticMethod=|void|setObjectOwnership|QObject *,QDeclarativeEngine::ObjectOwnership

%%
%% SIGNALS
%%

$prototype=void quit()
$signalMethod=|void|quit|

$prototype=void warnings( const QList<QDeclarativeError> & warnings )
$signalMethod=|void|warnings|const QList<QDeclarativeError> &

#pragma ENDDUMP
