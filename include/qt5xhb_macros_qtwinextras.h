/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QT5XHB_MACROS_QTWINEXTRAS_H
#define QT5XHB_MACROS_QTWINEXTRAS_H

#define ISQTWIN(n)                                          Qt5xHb::isObjectDerivedFrom(n,"QtWin")
#define ISQWINCOLORIZATIONCHANGEEVENT(n)                    Qt5xHb::isObjectDerivedFrom(n,"QWinColorizationChangeEvent")
#define ISQWINCOMPOSITIONCHANGEEVENT(n)                     Qt5xHb::isObjectDerivedFrom(n,"QWinCompositionChangeEvent")
#define ISQWINEVENT(n)                                      Qt5xHb::isObjectDerivedFrom(n,"QWinEvent")
#define ISQWINJUMPLIST(n)                                   Qt5xHb::isObjectDerivedFrom(n,"QWinJumpList")
#define ISQWINJUMPLISTCATEGORY(n)                           Qt5xHb::isObjectDerivedFrom(n,"QWinJumpListCategory")
#define ISQWINJUMPLISTITEM(n)                               Qt5xHb::isObjectDerivedFrom(n,"QWinJumpListItem")
#define ISQWINTASKBARBUTTON(n)                              Qt5xHb::isObjectDerivedFrom(n,"QWinTaskbarButton")
#define ISQWINTASKBARPROGRESS(n)                            Qt5xHb::isObjectDerivedFrom(n,"QWinTaskbarProgress")
#define ISQWINTHUMBNAILTOOLBAR(n)                           Qt5xHb::isObjectDerivedFrom(n,"QWinThumbnailToolBar")
#define ISQWINTHUMBNAILTOOLBUTTON(n)                        Qt5xHb::isObjectDerivedFrom(n,"QWinThumbnailToolButton")

#define PQTWIN(n)                                           (QtWin *) Qt5xHb::itemGetPtr(n)
#define PQWINCOLORIZATIONCHANGEEVENT(n)                     (QWinColorizationChangeEvent *) Qt5xHb::itemGetPtr(n)
#define PQWINCOMPOSITIONCHANGEEVENT(n)                      (QWinCompositionChangeEvent *) Qt5xHb::itemGetPtr(n)
#define PQWINEVENT(n)                                       (QWinEvent *) Qt5xHb::itemGetPtr(n)
#define PQWINJUMPLIST(n)                                    (QWinJumpList *) Qt5xHb::itemGetPtr(n)
#define PQWINJUMPLISTCATEGORY(n)                            (QWinJumpListCategory *) Qt5xHb::itemGetPtr(n)
#define PQWINJUMPLISTITEM(n)                                (QWinJumpListItem *) Qt5xHb::itemGetPtr(n)
#define PQWINTASKBARBUTTON(n)                               (QWinTaskbarButton *) Qt5xHb::itemGetPtr(n)
#define PQWINTASKBARPROGRESS(n)                             (QWinTaskbarProgress *) Qt5xHb::itemGetPtr(n)
#define PQWINTHUMBNAILTOOLBAR(n)                            (QWinThumbnailToolBar *) Qt5xHb::itemGetPtr(n)
#define PQWINTHUMBNAILTOOLBUTTON(n)                         (QWinThumbnailToolButton *) Qt5xHb::itemGetPtr(n)

#define OPQTWIN(n,v)                                        HB_ISNIL(n)? v : (QtWin *) Qt5xHb::itemGetPtr(n)
#define OPQWINCOLORIZATIONCHANGEEVENT(n,v)                  HB_ISNIL(n)? v : (QWinColorizationChangeEvent *) Qt5xHb::itemGetPtr(n)
#define OPQWINCOMPOSITIONCHANGEEVENT(n,v)                   HB_ISNIL(n)? v : (QWinCompositionChangeEvent *) Qt5xHb::itemGetPtr(n)
#define OPQWINEVENT(n,v)                                    HB_ISNIL(n)? v : (QWinEvent *) Qt5xHb::itemGetPtr(n)
#define OPQWINJUMPLIST(n,v)                                 HB_ISNIL(n)? v : (QWinJumpList *) Qt5xHb::itemGetPtr(n)
#define OPQWINJUMPLISTCATEGORY(n,v)                         HB_ISNIL(n)? v : (QWinJumpListCategory *) Qt5xHb::itemGetPtr(n)
#define OPQWINJUMPLISTITEM(n,v)                             HB_ISNIL(n)? v : (QWinJumpListItem *) Qt5xHb::itemGetPtr(n)
#define OPQWINTASKBARBUTTON(n,v)                            HB_ISNIL(n)? v : (QWinTaskbarButton *) Qt5xHb::itemGetPtr(n)
#define OPQWINTASKBARPROGRESS(n,v)                          HB_ISNIL(n)? v : (QWinTaskbarProgress *) Qt5xHb::itemGetPtr(n)
#define OPQWINTHUMBNAILTOOLBAR(n,v)                         HB_ISNIL(n)? v : (QWinThumbnailToolBar *) Qt5xHb::itemGetPtr(n)
#define OPQWINTHUMBNAILTOOLBUTTON(n,v)                      HB_ISNIL(n)? v : (QWinThumbnailToolButton *) Qt5xHb::itemGetPtr(n)

#endif /* QT5XHB_MACROS_QTWINEXTRAS_H */
