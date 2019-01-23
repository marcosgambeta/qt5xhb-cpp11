/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QINAPPPRODUCT
#endif

CLASS QInAppStore INHERIT QObject

   METHOD new
   METHOD delete
   METHOD restorePurchases
   METHOD registerProduct
   METHOD registeredProduct
   METHOD setPlatformProperty

   METHOD onProductRegistered
   METHOD onProductUnknown
   METHOD onTransactionReady

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QInAppStore
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QInAppStore>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals2.h"

#ifdef __XHARBOUR__
#include <QInAppStore>
#endif

#include <QInAppTransaction>

/*
explicit QInAppStore(QObject *parent = nullptr)
*/
HB_FUNC_STATIC( QINAPPSTORE_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QInAppStore * o = new QInAppStore ( OPQOBJECT(1,nullptr) );
    _qt5xhb_returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
~QInAppStore()
*/
HB_FUNC_STATIC( QINAPPSTORE_DELETE )
{
  QInAppStore * obj = (QInAppStore *) _qt5xhb_itemGetPtrStackSelfItem();

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
Q_INVOKABLE void restorePurchases()
*/
HB_FUNC_STATIC( QINAPPSTORE_RESTOREPURCHASES )
{
  QInAppStore * obj = (QInAppStore *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->restorePurchases ();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
Q_INVOKABLE void registerProduct(QInAppProduct::ProductType productType, const QString &identifier)
*/
HB_FUNC_STATIC( QINAPPSTORE_REGISTERPRODUCT )
{
  QInAppStore * obj = (QInAppStore *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISNUM(1) && ISCHAR(2) )
    {
#endif
      obj->registerProduct ( (QInAppProduct::ProductType) hb_parni(1), PQSTRING(2) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
Q_INVOKABLE QInAppProduct *registeredProduct(const QString &identifier) const
*/
HB_FUNC_STATIC( QINAPPSTORE_REGISTEREDPRODUCT )
{
  QInAppStore * obj = (QInAppStore *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      QInAppProduct * ptr = obj->registeredProduct ( PQSTRING(1) );
      _qt5xhb_createReturnQObjectClass ( ptr, "QINAPPPRODUCT" );
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
Q_INVOKABLE void setPlatformProperty(const QString &propertyName, const QString &value)
*/
HB_FUNC_STATIC( QINAPPSTORE_SETPLATFORMPROPERTY )
{
  QInAppStore * obj = (QInAppStore *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
    {
#endif
      obj->setPlatformProperty ( PQSTRING(1), PQSTRING(2) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void registerPendingProducts() [private] (slot)
*/

/*
void registerProduct(QInAppProduct *) [private] (slot)
*/

/*
void setupBackend() [private]
*/

/*
void productRegistered( QInAppProduct * product )
*/
HB_FUNC_STATIC( QINAPPSTORE_ONPRODUCTREGISTERED )
{
  if( hb_pcount() == 1 )
  {
    QInAppStore * sender = (QInAppStore *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender != nullptr )
    {
      if( Signals2_connection( sender, "productRegistered(QInAppProduct*)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QInAppStore::productRegistered, 
                                                              [sender]
                                                              (QInAppProduct * arg1) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "productRegistered(QInAppProduct*)" );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QINAPPSTORE" );
            PHB_ITEM pArg1 = Signals2_return_qobject( (QObject *) arg1, "QINAPPPRODUCT" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals2_store_connection( sender, "productRegistered(QInAppProduct*)", connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else
    {
      hb_retl( false );
    }
  }
  else if( hb_pcount() == 0 )
  {
    QInAppStore * sender = (QInAppStore *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender != nullptr )
    {
      Signals2_disconnection( sender, "productRegistered(QInAppProduct*)" );

      QObject::disconnect( Signals2_get_connection( sender, "productRegistered(QInAppProduct*)" ) );

      hb_retl( true );
    }
    else
    {
      hb_retl( false );
    }
  }
  else
  {
    hb_retl( false );
  }
}

/*
void productUnknown( QInAppProduct::ProductType productType, const QString & identifier )
*/
HB_FUNC_STATIC( QINAPPSTORE_ONPRODUCTUNKNOWN )
{
  if( hb_pcount() == 1 )
  {
    QInAppStore * sender = (QInAppStore *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender != nullptr )
    {
      if( Signals2_connection( sender, "productUnknown(QInAppProduct::ProductType,QString)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QInAppStore::productUnknown, 
                                                              [sender]
                                                              (QInAppProduct::ProductType arg1, const QString & arg2) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "productUnknown(QInAppProduct::ProductType,QString)" );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QINAPPSTORE" );
            PHB_ITEM pArg1 = hb_itemPutNI( NULL, (int) arg1 );
            PHB_ITEM pArg2 = hb_itemPutC( NULL, QSTRINGTOSTRING(arg2) );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 3, pSender, pArg1, pArg2 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
            hb_itemRelease( pArg2 );
          }

        });

        Signals2_store_connection( sender, "productUnknown(QInAppProduct::ProductType,QString)", connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else
    {
      hb_retl( false );
    }
  }
  else if( hb_pcount() == 0 )
  {
    QInAppStore * sender = (QInAppStore *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender != nullptr )
    {
      Signals2_disconnection( sender, "productUnknown(QInAppProduct::ProductType,QString)" );

      QObject::disconnect( Signals2_get_connection( sender, "productUnknown(QInAppProduct::ProductType,QString)" ) );

      hb_retl( true );
    }
    else
    {
      hb_retl( false );
    }
  }
  else
  {
    hb_retl( false );
  }
}

/*
void transactionReady( QInAppTransaction * transaction )
*/
HB_FUNC_STATIC( QINAPPSTORE_ONTRANSACTIONREADY )
{
  if( hb_pcount() == 1 )
  {
    QInAppStore * sender = (QInAppStore *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender != nullptr )
    {
      if( Signals2_connection( sender, "transactionReady(QInAppTransaction*)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QInAppStore::transactionReady, 
                                                              [sender]
                                                              (QInAppTransaction * arg1) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "transactionReady(QInAppTransaction*)" );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QINAPPSTORE" );
            PHB_ITEM pArg1 = Signals2_return_qobject( (QObject *) arg1, "QINAPPTRANSACTION" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals2_store_connection( sender, "transactionReady(QInAppTransaction*)", connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else
    {
      hb_retl( false );
    }
  }
  else if( hb_pcount() == 0 )
  {
    QInAppStore * sender = (QInAppStore *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender != nullptr )
    {
      Signals2_disconnection( sender, "transactionReady(QInAppTransaction*)" );

      QObject::disconnect( Signals2_get_connection( sender, "transactionReady(QInAppTransaction*)" ) );

      hb_retl( true );
    }
    else
    {
      hb_retl( false );
    }
  }
  else
  {
    hb_retl( false );
  }
}

#pragma ENDDUMP
