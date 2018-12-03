/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QABSTRACTSLIDERSLOTS_H
#define QABSTRACTSLIDERSLOTS_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QAbstractSlider>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class QAbstractSliderSlots: public QObject
{
  Q_OBJECT
  public:
  QAbstractSliderSlots(QObject *parent = 0);
  ~QAbstractSliderSlots();
  public slots:
  void actionTriggered( int action );
  void rangeChanged( int min, int max );
  void sliderMoved( int value );
  void sliderPressed();
  void sliderReleased();
  void valueChanged( int value );
};

#endif /* QABSTRACTSLIDERSLOTS_H */
