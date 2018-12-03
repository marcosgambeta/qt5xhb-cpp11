/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QSQLDRIVERSLOTS_H
#define QSQLDRIVERSLOTS_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QSqlDriver>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class QSqlDriverSlots: public QObject
{
  Q_OBJECT
  public:
  QSqlDriverSlots(QObject *parent = 0);
  ~QSqlDriverSlots();
  public slots:
  void notification( const QString & name );
  void notification( const QString & name, QSqlDriver::NotificationSource source, const QVariant & payload );
};

#endif /* QSQLDRIVERSLOTS_H */
