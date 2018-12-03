/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QITEMSELECTIONMODELSLOTS_H
#define QITEMSELECTIONMODELSLOTS_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QItemSelectionModel>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class QItemSelectionModelSlots: public QObject
{
  Q_OBJECT
  public:
  QItemSelectionModelSlots(QObject *parent = 0);
  ~QItemSelectionModelSlots();
  public slots:
  void selectionChanged( const QItemSelection & selected, const QItemSelection & deselected );
  void currentChanged( const QModelIndex & current, const QModelIndex & previous );
  void currentRowChanged( const QModelIndex & current, const QModelIndex & previous );
  void currentColumnChanged( const QModelIndex & current, const QModelIndex & previous );
};

#endif /* QITEMSELECTIONMODELSLOTS_H */
