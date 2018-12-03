/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QDECLARATIVEVIEWSLOTS_H
#define QDECLARATIVEVIEWSLOTS_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QDeclarativeView>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class QDeclarativeViewSlots: public QObject
{
  Q_OBJECT
  public:
  QDeclarativeViewSlots(QObject *parent = 0);
  ~QDeclarativeViewSlots();
  public slots:
  void sceneResized( QSize size );
  void statusChanged( QDeclarativeView::Status status );
};

#endif /* QDECLARATIVEVIEWSLOTS_H */
