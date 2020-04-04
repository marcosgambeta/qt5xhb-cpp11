/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QAUDIOFORMAT
#endif

CLASS QAudioDeviceInfo

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD deviceName
   METHOD isFormatSupported
   METHOD isNull
   METHOD nearestFormat
   METHOD preferredFormat
   METHOD supportedByteOrders
   METHOD supportedChannelCounts
   METHOD supportedCodecs
   METHOD supportedSampleRates
   METHOD supportedSampleSizes
   METHOD supportedSampleTypes
   METHOD availableDevices
   METHOD defaultInputDevice
   METHOD defaultOutputDevice

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QAudioDeviceInfo
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtMultimedia/QAudioDeviceInfo>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals4.h"

#ifdef __XHARBOUR__
#include <QtMultimedia/QAudioDeviceInfo>
#endif

/*
QAudioDeviceInfo ()
*/
void QAudioDeviceInfo_new1()
{
  auto obj = new QAudioDeviceInfo();
  Qt5xHb::returnNewObject( obj, true );
}

/*
QAudioDeviceInfo ( const QAudioDeviceInfo & other )
*/
void QAudioDeviceInfo_new2()
{
  auto obj = new QAudioDeviceInfo( *PQAUDIODEVICEINFO(1) );
  Qt5xHb::returnNewObject( obj, true );
}

/*
QAudioDeviceInfo(const QString &realm, const QByteArray &handle, QAudio::Mode mode) [private]
*/

//[1]QAudioDeviceInfo ()
//[2]QAudioDeviceInfo ( const QAudioDeviceInfo & other )

HB_FUNC_STATIC( QAUDIODEVICEINFO_NEW )
{
  if( ISNUMPAR(0) )
  {
    QAudioDeviceInfo_new1();
  }
  else if( ISNUMPAR(1) && ISQAUDIODEVICEINFO(1) )
  {
    QAudioDeviceInfo_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
~QAudioDeviceInfo()
*/
HB_FUNC_STATIC( QAUDIODEVICEINFO_DELETE )
{
  auto obj = (QAudioDeviceInfo *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    delete obj;
    obj = nullptr;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString deviceName () const
*/
HB_FUNC_STATIC( QAUDIODEVICEINFO_DEVICENAME )
{
  auto obj = (QAudioDeviceInfo *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->deviceName() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool isFormatSupported ( const QAudioFormat & format ) const
*/
HB_FUNC_STATIC( QAUDIODEVICEINFO_ISFORMATSUPPORTED )
{
  auto obj = (QAudioDeviceInfo *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQAUDIOFORMAT(1) )
    {
#endif
      RBOOL( obj->isFormatSupported( *PQAUDIOFORMAT(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool isNull () const
*/
HB_FUNC_STATIC( QAUDIODEVICEINFO_ISNULL )
{
  auto obj = (QAudioDeviceInfo *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isNull() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QAudioFormat nearestFormat ( const QAudioFormat & format ) const
*/
HB_FUNC_STATIC( QAUDIODEVICEINFO_NEARESTFORMAT )
{
  auto obj = (QAudioDeviceInfo *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQAUDIOFORMAT(1) )
    {
#endif
      auto ptr = new QAudioFormat( obj->nearestFormat( *PQAUDIOFORMAT(1) ) );
      Qt5xHb::createReturnClass( ptr, "QAUDIOFORMAT", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QAudioFormat preferredFormat () const
*/
HB_FUNC_STATIC( QAUDIODEVICEINFO_PREFERREDFORMAT )
{
  auto obj = (QAudioDeviceInfo *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QAudioFormat( obj->preferredFormat() );
      Qt5xHb::createReturnClass( ptr, "QAUDIOFORMAT", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QList<QAudioFormat::Endian> supportedByteOrders () const
*/
HB_FUNC_STATIC( QAUDIODEVICEINFO_SUPPORTEDBYTEORDERS )
{
  auto obj = (QAudioDeviceInfo *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QList<QAudioFormat::Endian> list = obj->supportedByteOrders();
      PHB_ITEM pArray = hb_itemArrayNew(0);
      for( auto i = 0; i < list.count(); i++ )
      {
        PHB_ITEM pItem = hb_itemPutNI( NULL, (int) list[i] );
        hb_arrayAddForward( pArray, pItem );
        hb_itemRelease(pItem);
      }
      hb_itemReturnRelease(pArray);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QList<int> supportedChannelCounts () const
*/
HB_FUNC_STATIC( QAUDIODEVICEINFO_SUPPORTEDCHANNELCOUNTS )
{
  auto obj = (QAudioDeviceInfo *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QList<int> list = obj->supportedChannelCounts();
      Qt5xHb::convert_qlist_int_to_array ( list );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QStringList supportedCodecs () const
*/
HB_FUNC_STATIC( QAUDIODEVICEINFO_SUPPORTEDCODECS )
{
  auto obj = (QAudioDeviceInfo *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRINGLIST( obj->supportedCodecs() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QList<int> supportedSampleRates () const
*/
HB_FUNC_STATIC( QAUDIODEVICEINFO_SUPPORTEDSAMPLERATES )
{
  auto obj = (QAudioDeviceInfo *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QList<int> list = obj->supportedSampleRates();
      Qt5xHb::convert_qlist_int_to_array ( list );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QList<int> supportedSampleSizes () const
*/
HB_FUNC_STATIC( QAUDIODEVICEINFO_SUPPORTEDSAMPLESIZES )
{
  auto obj = (QAudioDeviceInfo *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QList<int> list = obj->supportedSampleSizes();
      Qt5xHb::convert_qlist_int_to_array ( list );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QList<QAudioFormat::SampleType> supportedSampleTypes () const
*/
HB_FUNC_STATIC( QAUDIODEVICEINFO_SUPPORTEDSAMPLETYPES )
{
  auto obj = (QAudioDeviceInfo *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QList<QAudioFormat::SampleType> list = obj->supportedSampleTypes();
      PHB_ITEM pArray = hb_itemArrayNew(0);
      for( auto i = 0; i < list.count(); i++ )
      {
        PHB_ITEM pItem = hb_itemPutNI( NULL, (int) list[i] );
        hb_arrayAddForward( pArray, pItem );
        hb_itemRelease(pItem);
      }
      hb_itemReturnRelease(pArray);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
static QList<QAudioDeviceInfo> availableDevices ( QAudio::Mode mode )
*/
HB_FUNC_STATIC( QAUDIODEVICEINFO_AVAILABLEDEVICES )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && ISNUM(1) )
  {
#endif
    QList<QAudioDeviceInfo> list = QAudioDeviceInfo::availableDevices( (QAudio::Mode) hb_parni(1) );
    PHB_DYNS pDynSym = hb_dynsymFindName( "QAUDIODEVICEINFO" );
    PHB_ITEM pArray = hb_itemArrayNew(0);
    if( pDynSym )
    {
      for( auto i = 0; i < list.count(); i++ )
      {
        hb_vmPushDynSym( pDynSym );
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QAudioDeviceInfo *) new QAudioDeviceInfo( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_itemRelease( pItem );
        PHB_ITEM pDestroy = hb_itemNew( NULL );
        hb_itemPutL( pDestroy, true );
        hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
        hb_itemRelease( pDestroy );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
      }
    }
    else
    {
      hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QAUDIODEVICEINFO", HB_ERR_ARGS_BASEPARAMS );
    }
    hb_itemReturnRelease(pArray);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static QAudioDeviceInfo defaultInputDevice ()
*/
HB_FUNC_STATIC( QAUDIODEVICEINFO_DEFAULTINPUTDEVICE )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    auto ptr = new QAudioDeviceInfo( QAudioDeviceInfo::defaultInputDevice() );
    Qt5xHb::createReturnClass( ptr, "QAUDIODEVICEINFO", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static QAudioDeviceInfo defaultOutputDevice ()
*/
HB_FUNC_STATIC( QAUDIODEVICEINFO_DEFAULTOUTPUTDEVICE )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    auto ptr = new QAudioDeviceInfo( QAudioDeviceInfo::defaultOutputDevice() );
    Qt5xHb::createReturnClass( ptr, "QAUDIODEVICEINFO", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
QString realm() const [private]
*/

/*
QByteArray handle() const [private]
*/

/*
QAudio::Mode mode() const [private]
*/

HB_FUNC_STATIC( QAUDIODEVICEINFO_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QAUDIODEVICEINFO_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QAUDIODEVICEINFO_NEWFROM );
}

HB_FUNC_STATIC( QAUDIODEVICEINFO_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QAUDIODEVICEINFO_NEWFROM );
}

HB_FUNC_STATIC( QAUDIODEVICEINFO_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QAUDIODEVICEINFO_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

#pragma ENDDUMP
