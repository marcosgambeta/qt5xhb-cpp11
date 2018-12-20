/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QBarModelMapper INHERIT QObject

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QBarModelMapper
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QBarModelMapper>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals2.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QBarModelMapper>
#endif
#endif

using namespace QtCharts;

/*
explicit QBarModelMapper(QObject *parent = Q_NULLPTR) [protected]
*/

/*
QAbstractItemModel *model() const  [protected]
*/

/*
void setModel(QAbstractItemModel *model) [protected]
*/

/*
QAbstractBarSeries *series() const [protected]
*/

/*
void setSeries(QAbstractBarSeries *series) [protected]
*/

/*
int first() const [protected]
*/

/*
void setFirst(int first) [protected]
*/

/*
int count() const [protected]
*/

/*
void setCount(int count) [protected]
*/

/*
int firstBarSetSection() const [protected]
*/

/*
void setFirstBarSetSection(int firstBarSetSection) [protected]
*/

/*
int lastBarSetSection() const [protected]
*/

/*
void setLastBarSetSection(int lastBarSetSection) [protected]
*/

/*
Qt::Orientation orientation() const [protected]
*/

/*
void setOrientation(Qt::Orientation orientation) [protected]
*/

#pragma ENDDUMP
