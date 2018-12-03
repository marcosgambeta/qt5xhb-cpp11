/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QT5XHB_MACROS_QTWEBKIT_H
#define QT5XHB_MACROS_QTWEBKIT_H

#define ISQWEBDATABASE(n)                                   _qt5xhb_isObjectDerivedFrom(n,"QWebDatabase")
#define ISQWEBELEMENT(n)                                    _qt5xhb_isObjectDerivedFrom(n,"QWebElement")
#define ISQWEBELEMENTCOLLECTION(n)                          _qt5xhb_isObjectDerivedFrom(n,"QWebElementCollection")
#define ISQWEBHISTORY(n)                                    _qt5xhb_isObjectDerivedFrom(n,"QWebHistory")
#define ISQWEBHISTORYINTERFACE(n)                           _qt5xhb_isObjectDerivedFrom(n,"QWebHistoryInterface")
#define ISQWEBHISTORYITEM(n)                                _qt5xhb_isObjectDerivedFrom(n,"QWebHistoryItem")
#define ISQWEBPLUGINFACTORY(n)                              _qt5xhb_isObjectDerivedFrom(n,"QWebPluginFactory")
#define ISQWEBSECURITYORIGIN(n)                             _qt5xhb_isObjectDerivedFrom(n,"QWebSecurityOrigin")
#define ISQWEBSETTINGS(n)                                   _qt5xhb_isObjectDerivedFrom(n,"QWebSettings")

#define PQWEBDATABASE(n)                                    (QWebDatabase *) _qt5xhb_itemGetPtr(n)
#define PQWEBELEMENT(n)                                     (QWebElement *) _qt5xhb_itemGetPtr(n)
#define PQWEBELEMENTCOLLECTION(n)                           (QWebElementCollection *) _qt5xhb_itemGetPtr(n)
#define PQWEBHISTORY(n)                                     (QWebHistory *) _qt5xhb_itemGetPtr(n)
#define PQWEBHISTORYINTERFACE(n)                            (QWebHistoryInterface *) _qt5xhb_itemGetPtr(n)
#define PQWEBHISTORYITEM(n)                                 (QWebHistoryItem *) _qt5xhb_itemGetPtr(n)
#define PQWEBPLUGINFACTORY(n)                               (QWebPluginFactory *) _qt5xhb_itemGetPtr(n)
#define PQWEBSECURITYORIGIN(n)                              (QWebSecurityOrigin *) _qt5xhb_itemGetPtr(n)
#define PQWEBSETTINGS(n)                                    (QWebSettings *) _qt5xhb_itemGetPtr(n)

#define OPQWEBDATABASE(n,v)                                 ISNIL(n)? v : (QWebDatabase *) _qt5xhb_itemGetPtr(n)
#define OPQWEBELEMENT(n,v)                                  ISNIL(n)? v : (QWebElement *) _qt5xhb_itemGetPtr(n)
#define OPQWEBELEMENTCOLLECTION(n,v)                        ISNIL(n)? v : (QWebElementCollection *) _qt5xhb_itemGetPtr(n)
#define OPQWEBHISTORY(n,v)                                  ISNIL(n)? v : (QWebHistory *) _qt5xhb_itemGetPtr(n)
#define OPQWEBHISTORYINTERFACE(n,v)                         ISNIL(n)? v : (QWebHistoryInterface *) _qt5xhb_itemGetPtr(n)
#define OPQWEBHISTORYITEM(n,v)                              ISNIL(n)? v : (QWebHistoryItem *) _qt5xhb_itemGetPtr(n)
#define OPQWEBPLUGINFACTORY(n,v)                            ISNIL(n)? v : (QWebPluginFactory *) _qt5xhb_itemGetPtr(n)
#define OPQWEBSECURITYORIGIN(n,v)                           ISNIL(n)? v : (QWebSecurityOrigin *) _qt5xhb_itemGetPtr(n)
#define OPQWEBSETTINGS(n,v)                                 ISNIL(n)? v : (QWebSettings *) _qt5xhb_itemGetPtr(n)

#endif /* QT5XHB_MACROS_QTWEBKIT_H */
