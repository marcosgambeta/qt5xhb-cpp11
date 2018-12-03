/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QLIGHTSENSORSLOTS_H
#define QLIGHTSENSORSLOTS_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QLightSensor>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class QLightSensorSlots: public QObject
{
  Q_OBJECT
  public:
  QLightSensorSlots(QObject *parent = 0);
  ~QLightSensorSlots();
  public slots:
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  void fieldOfViewChanged( qreal fieldOfView );
#endif
};

#endif /* QLIGHTSENSORSLOTS_H */
