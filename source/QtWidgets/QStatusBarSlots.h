/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QSTATUSBARSLOTS_H
#define QSTATUSBARSLOTS_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QStatusBar>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class QStatusBarSlots: public QObject
{
  Q_OBJECT
  public:
  QStatusBarSlots(QObject *parent = 0);
  ~QStatusBarSlots();
  public slots:
  void messageChanged( const QString & message );
};

#endif /* QSTATUSBARSLOTS_H */
