/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QHeightMapSurfaceDataProxySlots.h"

QHeightMapSurfaceDataProxySlots::QHeightMapSurfaceDataProxySlots(QObject *parent) : QObject(parent)
{
}

QHeightMapSurfaceDataProxySlots::~QHeightMapSurfaceDataProxySlots()
{
}
void QHeightMapSurfaceDataProxySlots::heightMapChanged( const QImage & image )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "heightMapChanged(QImage)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QHEIGHTMAPSURFACEDATAPROXY" );
    PHB_ITEM pimage = Signals_return_object( (void *) &image, "QIMAGE" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pimage );
    hb_itemRelease( psender );
    hb_itemRelease( pimage );
  }
}
void QHeightMapSurfaceDataProxySlots::heightMapFileChanged( const QString & filename )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "heightMapFileChanged(QString)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QHEIGHTMAPSURFACEDATAPROXY" );
    PHB_ITEM pfilename = hb_itemPutC( NULL, QSTRINGTOSTRING(filename) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pfilename );
    hb_itemRelease( psender );
    hb_itemRelease( pfilename );
  }
}
void QHeightMapSurfaceDataProxySlots::maxXValueChanged( float value )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "maxXValueChanged(float)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QHEIGHTMAPSURFACEDATAPROXY" );
    PHB_ITEM pvalue = hb_itemPutND( NULL, value );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pvalue );
    hb_itemRelease( psender );
    hb_itemRelease( pvalue );
  }
}
void QHeightMapSurfaceDataProxySlots::maxZValueChanged( float value )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "maxZValueChanged(float)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QHEIGHTMAPSURFACEDATAPROXY" );
    PHB_ITEM pvalue = hb_itemPutND( NULL, value );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pvalue );
    hb_itemRelease( psender );
    hb_itemRelease( pvalue );
  }
}
void QHeightMapSurfaceDataProxySlots::minXValueChanged( float value )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "minXValueChanged(float)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QHEIGHTMAPSURFACEDATAPROXY" );
    PHB_ITEM pvalue = hb_itemPutND( NULL, value );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pvalue );
    hb_itemRelease( psender );
    hb_itemRelease( pvalue );
  }
}
void QHeightMapSurfaceDataProxySlots::minZValueChanged( float value )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "minZValueChanged(float)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QHEIGHTMAPSURFACEDATAPROXY" );
    PHB_ITEM pvalue = hb_itemPutND( NULL, value );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pvalue );
    hb_itemRelease( psender );
    hb_itemRelease( pvalue );
  }
}

void QHeightMapSurfaceDataProxySlots_connect_signal ( const QString & signal, const QString & slot )
{
  QHeightMapSurfaceDataProxy * obj = (QHeightMapSurfaceDataProxy *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QHeightMapSurfaceDataProxySlots * s = QCoreApplication::instance()->findChild<QHeightMapSurfaceDataProxySlots *>();

    if( s == NULL )
    {
      s = new QHeightMapSurfaceDataProxySlots();
      s->moveToThread( QCoreApplication::instance()->thread() );
      s->setParent( QCoreApplication::instance() );
    }

    hb_retl( Signals_connection_disconnection( s, signal, slot ) );
  }
  else
  {
    hb_retl( false );
  }
}
