/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QCAMERAFOCUSCONTROLSLOTS_H
#define QCAMERAFOCUSCONTROLSLOTS_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QCameraFocusControl>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class QCameraFocusControlSlots: public QObject
{
  Q_OBJECT
  public:
  QCameraFocusControlSlots(QObject *parent = 0);
  ~QCameraFocusControlSlots();
  public slots:
  void customFocusPointChanged( const QPointF & point );
  void focusModeChanged( QCameraFocus::FocusModes mode );
  void focusPointModeChanged( QCameraFocus::FocusPointMode mode );
  void focusZonesChanged();
};

#endif /* QCAMERAFOCUSCONTROLSLOTS_H */
