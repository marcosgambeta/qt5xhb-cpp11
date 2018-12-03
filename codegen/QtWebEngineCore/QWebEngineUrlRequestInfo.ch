%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWebEngineCore

$header

/*
enum QWebEngineUrlRequestInfo::ResourceType
*/
#define QWebEngineUrlRequestInfo_ResourceTypeMainFrame               0
#define QWebEngineUrlRequestInfo_ResourceTypeSubFrame                1
#define QWebEngineUrlRequestInfo_ResourceTypeStylesheet              2
#define QWebEngineUrlRequestInfo_ResourceTypeScript                  3
#define QWebEngineUrlRequestInfo_ResourceTypeImage                   4
#define QWebEngineUrlRequestInfo_ResourceTypeFontResource            5
#define QWebEngineUrlRequestInfo_ResourceTypeSubResource             6
#define QWebEngineUrlRequestInfo_ResourceTypeObject                  7
#define QWebEngineUrlRequestInfo_ResourceTypeMedia                   8
#define QWebEngineUrlRequestInfo_ResourceTypeWorker                  9
#define QWebEngineUrlRequestInfo_ResourceTypeSharedWorker            10
#define QWebEngineUrlRequestInfo_ResourceTypePrefetch                11
#define QWebEngineUrlRequestInfo_ResourceTypeFavicon                 12
#define QWebEngineUrlRequestInfo_ResourceTypeXhr                     13
#define QWebEngineUrlRequestInfo_ResourceTypePing                    14
#define QWebEngineUrlRequestInfo_ResourceTypeServiceWorker           15
#define QWebEngineUrlRequestInfo_ResourceTypeCspReport               16
#define QWebEngineUrlRequestInfo_ResourceTypePluginResource          17
#define QWebEngineUrlRequestInfo_ResourceTypeLast                    18
#define QWebEngineUrlRequestInfo_ResourceTypeUnknown                 255

/*
enum QWebEngineUrlRequestInfo::NavigationType
*/
#define QWebEngineUrlRequestInfo_NavigationTypeLink                  0
#define QWebEngineUrlRequestInfo_NavigationTypeTyped                 1
#define QWebEngineUrlRequestInfo_NavigationTypeFormSubmitted         2
#define QWebEngineUrlRequestInfo_NavigationTypeBackForward           3
#define QWebEngineUrlRequestInfo_NavigationTypeReload                4
#define QWebEngineUrlRequestInfo_NavigationTypeOther                 5
