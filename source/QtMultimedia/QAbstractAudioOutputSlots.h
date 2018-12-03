/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QABSTRACTAUDIOOUTPUTSLOTS_H
#define QABSTRACTAUDIOOUTPUTSLOTS_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QAbstractAudioOutput>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class QAbstractAudioOutputSlots: public QObject
{
  Q_OBJECT
  public:
  QAbstractAudioOutputSlots(QObject *parent = 0);
  ~QAbstractAudioOutputSlots();
  public slots:
  void errorChanged( QAudio::Error error );
  void stateChanged( QAudio::State state );
  void notify();
};

#endif /* QABSTRACTAUDIOOUTPUTSLOTS_H */
