/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QT5XHB_MACROS_QTPOSITIONING_H
#define QT5XHB_MACROS_QTPOSITIONING_H

#define ISQGEOADDRESS(n)                                    Qt5xHb::isObjectDerivedFrom(n,"QGeoAddress")
#define ISQGEOAREAMONITORINFO(n)                            Qt5xHb::isObjectDerivedFrom(n,"QGeoAreaMonitorInfo")
#define ISQGEOAREAMONITORSOURCE(n)                          Qt5xHb::isObjectDerivedFrom(n,"QGeoAreaMonitorSource")
#define ISQGEOCIRCLE(n)                                     Qt5xHb::isObjectDerivedFrom(n,"QGeoCircle")
#define ISQGEOCOORDINATE(n)                                 Qt5xHb::isObjectDerivedFrom(n,"QGeoCoordinate")
#define ISQGEOLOCATION(n)                                   Qt5xHb::isObjectDerivedFrom(n,"QGeoLocation")
#define ISQGEOPOSITIONINFO(n)                               Qt5xHb::isObjectDerivedFrom(n,"QGeoPositionInfo")
#define ISQGEOPOSITIONINFOSOURCE(n)                         Qt5xHb::isObjectDerivedFrom(n,"QGeoPositionInfoSource")
#define ISQGEOPOSITIONINFOSOURCEFACTORY(n)                  Qt5xHb::isObjectDerivedFrom(n,"QGeoPositionInfoSourceFactory")
#define ISQGEORECTANGLE(n)                                  Qt5xHb::isObjectDerivedFrom(n,"QGeoRectangle")
#define ISQGEOSATELLITEINFO(n)                              Qt5xHb::isObjectDerivedFrom(n,"QGeoSatelliteInfo")
#define ISQGEOSATELLITEINFOSOURCE(n)                        Qt5xHb::isObjectDerivedFrom(n,"QGeoSatelliteInfoSource")
#define ISQGEOSHAPE(n)                                      Qt5xHb::isObjectDerivedFrom(n,"QGeoShape")
#define ISQNMEAPOSITIONINFOSOURCE(n)                        Qt5xHb::isObjectDerivedFrom(n,"QNmeaPositionInfoSource")

#define PQGEOADDRESS(n)                                     (QGeoAddress *) Qt5xHb::itemGetPtr(n)
#define PQGEOAREAMONITORINFO(n)                             (QGeoAreaMonitorInfo *) Qt5xHb::itemGetPtr(n)
#define PQGEOAREAMONITORSOURCE(n)                           (QGeoAreaMonitorSource *) Qt5xHb::itemGetPtr(n)
#define PQGEOCIRCLE(n)                                      (QGeoCircle *) Qt5xHb::itemGetPtr(n)
#define PQGEOCOORDINATE(n)                                  (QGeoCoordinate *) Qt5xHb::itemGetPtr(n)
#define PQGEOLOCATION(n)                                    (QGeoLocation *) Qt5xHb::itemGetPtr(n)
#define PQGEOPOSITIONINFO(n)                                (QGeoPositionInfo *) Qt5xHb::itemGetPtr(n)
#define PQGEOPOSITIONINFOSOURCE(n)                          (QGeoPositionInfoSource *) Qt5xHb::itemGetPtr(n)
#define PQGEOPOSITIONINFOSOURCEFACTORY(n)                   (QGeoPositionInfoSourceFactory *) Qt5xHb::itemGetPtr(n)
#define PQGEORECTANGLE(n)                                   (QGeoRectangle *) Qt5xHb::itemGetPtr(n)
#define PQGEOSATELLITEINFO(n)                               (QGeoSatelliteInfo *) Qt5xHb::itemGetPtr(n)
#define PQGEOSATELLITEINFOSOURCE(n)                         (QGeoSatelliteInfoSource *) Qt5xHb::itemGetPtr(n)
#define PQGEOSHAPE(n)                                       (QGeoShape *) Qt5xHb::itemGetPtr(n)
#define PQNMEAPOSITIONINFOSOURCE(n)                         (QNmeaPositionInfoSource *) Qt5xHb::itemGetPtr(n)

#define OPQGEOADDRESS(n,v)                                  HB_ISNIL(n)? v : (QGeoAddress *) Qt5xHb::itemGetPtr(n)
#define OPQGEOAREAMONITORINFO(n,v)                          HB_ISNIL(n)? v : (QGeoAreaMonitorInfo *) Qt5xHb::itemGetPtr(n)
#define OPQGEOAREAMONITORSOURCE(n,v)                        HB_ISNIL(n)? v : (QGeoAreaMonitorSource *) Qt5xHb::itemGetPtr(n)
#define OPQGEOCIRCLE(n,v)                                   HB_ISNIL(n)? v : (QGeoCircle *) Qt5xHb::itemGetPtr(n)
#define OPQGEOCOORDINATE(n,v)                               HB_ISNIL(n)? v : (QGeoCoordinate *) Qt5xHb::itemGetPtr(n)
#define OPQGEOLOCATION(n,v)                                 HB_ISNIL(n)? v : (QGeoLocation *) Qt5xHb::itemGetPtr(n)
#define OPQGEOPOSITIONINFO(n,v)                             HB_ISNIL(n)? v : (QGeoPositionInfo *) Qt5xHb::itemGetPtr(n)
#define OPQGEOPOSITIONINFOSOURCE(n,v)                       HB_ISNIL(n)? v : (QGeoPositionInfoSource *) Qt5xHb::itemGetPtr(n)
#define OPQGEOPOSITIONINFOSOURCEFACTORY(n,v)                HB_ISNIL(n)? v : (QGeoPositionInfoSourceFactory *) Qt5xHb::itemGetPtr(n)
#define OPQGEORECTANGLE(n,v)                                HB_ISNIL(n)? v : (QGeoRectangle *) Qt5xHb::itemGetPtr(n)
#define OPQGEOSATELLITEINFO(n,v)                            HB_ISNIL(n)? v : (QGeoSatelliteInfo *) Qt5xHb::itemGetPtr(n)
#define OPQGEOSATELLITEINFOSOURCE(n,v)                      HB_ISNIL(n)? v : (QGeoSatelliteInfoSource *) Qt5xHb::itemGetPtr(n)
#define OPQGEOSHAPE(n,v)                                    HB_ISNIL(n)? v : (QGeoShape *) Qt5xHb::itemGetPtr(n)
#define OPQNMEAPOSITIONINFOSOURCE(n,v)                      HB_ISNIL(n)? v : (QNmeaPositionInfoSource *) Qt5xHb::itemGetPtr(n)

#endif /* QT5XHB_MACROS_QTPOSITIONING_H */
