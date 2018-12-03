/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QT5XHB_MACROS_QTGAMEPAD_H
#define QT5XHB_MACROS_QTGAMEPAD_H

#define ISQGAMEPAD(n)                                       _qt5xhb_isObjectDerivedFrom(n,"QGamepad")
#define ISQGAMEPADKEYNAVIGATION(n)                          _qt5xhb_isObjectDerivedFrom(n,"QGamepadKeyNavigation")
#define ISQGAMEPADMANAGER(n)                                _qt5xhb_isObjectDerivedFrom(n,"QGamepadManager")

#define PQGAMEPAD(n)                                        (QGamepad *) _qt5xhb_itemGetPtr(n)
#define PQGAMEPADKEYNAVIGATION(n)                           (QGamepadKeyNavigation *) _qt5xhb_itemGetPtr(n)
#define PQGAMEPADMANAGER(n)                                 (QGamepadManager *) _qt5xhb_itemGetPtr(n)

#define OPQGAMEPAD(n,v)                                     ISNIL(n)? v : (QGamepad *) _qt5xhb_itemGetPtr(n)
#define OPQGAMEPADKEYNAVIGATION(n,v)                        ISNIL(n)? v : (QGamepadKeyNavigation *) _qt5xhb_itemGetPtr(n)
#define OPQGAMEPADMANAGER(n,v)                              ISNIL(n)? v : (QGamepadManager *) _qt5xhb_itemGetPtr(n)

#endif /* QT5XHB_MACROS_QTGAMEPAD_H */
