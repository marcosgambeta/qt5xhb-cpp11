/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QValue3DAxisFormatter INHERIT QObject

   METHOD new
   METHOD delete

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QValue3DAxisFormatter
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QtDataVisualization/QValue3DAxisFormatter>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QtDataVisualization/QValue3DAxisFormatter>
#endif
#endif

using namespace QtDataVisualization;

/*
explicit QValue3DAxisFormatter(QObject *parent = nullptr)
*/
HB_FUNC_STATIC( QVALUE3DAXISFORMATTER_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    auto obj = new QValue3DAxisFormatter( OPQOBJECT(1,nullptr) );
    Qt5xHb::returnNewObject( obj, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
explicit QValue3DAxisFormatter(QValue3DAxisFormatterPrivate *d, QObject *parent = nullptr) [protected]
*/

/*
virtual ~QValue3DAxisFormatter()
*/
HB_FUNC_STATIC( QVALUE3DAXISFORMATTER_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (QValue3DAxisFormatter *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    Qt5xHb::Events_disconnect_all_events( obj, true );
    Signals_disconnect_all_signals( obj, true );
    delete obj;
    obj = nullptr;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void setAllowNegatives(bool allow) [protected]
*/

/*
bool allowNegatives() const [protected]
*/

/*
void setAllowZero(bool allow) [protected]
*/

/*
bool allowZero() const [protected]
*/

/*
virtual QValue3DAxisFormatter *createNewInstance() const [protected]
*/

/*
virtual void recalculate() [protected]
*/

/*
virtual QString stringForValue(qreal value, const QString &format) const [protected]
*/

/*
virtual float positionAt(float value) const [protected]
*/

/*
virtual float valueAt(float position) const [protected]
*/

/*
virtual void populateCopy(QValue3DAxisFormatter &copy) const [protected]
*/

/*
void markDirty(bool labelsChange = false) [protected]
*/

/*
QValue3DAxis *axis() const [protected]
*/

/*
QVector<float> &gridPositions() const [protected]
*/

/*
QVector<float> &subGridPositions() const [protected]
*/

/*
QVector<float> &labelPositions() const [protected]
*/

/*
QStringList &labelStrings() const [protected]
*/

/*
void setLocale(const QLocale &locale) [protected]
*/

/*
QLocale locale() const [protected]
*/

#pragma ENDDUMP
