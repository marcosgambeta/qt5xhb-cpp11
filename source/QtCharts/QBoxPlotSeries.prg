/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBOXSET
REQUEST QBRUSH
REQUEST QPEN
#endif

CLASS QBoxPlotSeries INHERIT QAbstractSeries

   METHOD new
   METHOD delete
   METHOD count
   METHOD boxOutlineVisible
   METHOD setBoxOutlineVisible
   METHOD boxWidth
   METHOD setBoxWidth
   METHOD brush
   METHOD setBrush
   METHOD pen
   METHOD setPen
   METHOD append
   METHOD remove
   METHOD take
   METHOD insert
   METHOD boxSets
   METHOD clear
   METHOD type

   METHOD onBoxOutlineVisibilityChanged
   METHOD onBoxsetsAdded
   METHOD onBoxsetsRemoved
   METHOD onBoxWidthChanged
   METHOD onBrushChanged
   METHOD onClicked
   METHOD onCountChanged
   METHOD onDoubleClicked
   METHOD onHovered
   METHOD onPenChanged
   METHOD onPressed
   METHOD onReleased

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QBoxPlotSeries
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QBoxPlotSeries>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals2.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QBoxPlotSeries>
#endif
#endif

using namespace QtCharts;

/*
explicit QBoxPlotSeries(QObject *parent = Q_NULLPTR)
*/
HB_FUNC_STATIC( QBOXPLOTSERIES_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QBoxPlotSeries * o = new QBoxPlotSeries ( OPQOBJECT(1,Q_NULLPTR) );
    _qt5xhb_returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
~QBoxPlotSeries()
*/
HB_FUNC_STATIC( QBOXPLOTSERIES_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBoxPlotSeries * obj = (QBoxPlotSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
int count() const
*/
HB_FUNC_STATIC( QBOXPLOTSERIES_COUNT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBoxPlotSeries * obj = (QBoxPlotSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->count () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
bool boxOutlineVisible()
*/
HB_FUNC_STATIC( QBOXPLOTSERIES_BOXOUTLINEVISIBLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBoxPlotSeries * obj = (QBoxPlotSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->boxOutlineVisible () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setBoxOutlineVisible(bool visible)
*/
HB_FUNC_STATIC( QBOXPLOTSERIES_SETBOXOUTLINEVISIBLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBoxPlotSeries * obj = (QBoxPlotSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setBoxOutlineVisible ( PBOOL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
qreal boxWidth()
*/
HB_FUNC_STATIC( QBOXPLOTSERIES_BOXWIDTH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBoxPlotSeries * obj = (QBoxPlotSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->boxWidth () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setBoxWidth(qreal width)
*/
HB_FUNC_STATIC( QBOXPLOTSERIES_SETBOXWIDTH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBoxPlotSeries * obj = (QBoxPlotSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setBoxWidth ( PQREAL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QBrush brush() const
*/
HB_FUNC_STATIC( QBOXPLOTSERIES_BRUSH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBoxPlotSeries * obj = (QBoxPlotSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QBrush * ptr = new QBrush( obj->brush () );
      _qt5xhb_createReturnClass ( ptr, "QBRUSH", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setBrush(const QBrush &brush)
*/
HB_FUNC_STATIC( QBOXPLOTSERIES_SETBRUSH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBoxPlotSeries * obj = (QBoxPlotSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQBRUSH(1) )
    {
#endif
      obj->setBrush ( *PQBRUSH(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QPen pen() const
*/
HB_FUNC_STATIC( QBOXPLOTSERIES_PEN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBoxPlotSeries * obj = (QBoxPlotSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QPen * ptr = new QPen( obj->pen () );
      _qt5xhb_createReturnClass ( ptr, "QPEN", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setPen(const QPen &pen)
*/
HB_FUNC_STATIC( QBOXPLOTSERIES_SETPEN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBoxPlotSeries * obj = (QBoxPlotSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQPEN(1) )
    {
#endif
      obj->setPen ( *PQPEN(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
bool append(QBoxSet *box)
*/
void QBoxPlotSeries_append1 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBoxPlotSeries * obj = (QBoxPlotSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      RBOOL( obj->append ( PQBOXSET(1) ) );
  }
#endif
}

/*
bool append(QList<QBoxSet *> boxes)
*/
void QBoxPlotSeries_append2 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBoxPlotSeries * obj = (QBoxPlotSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
       QList<QBoxSet *> par1;
PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aList1);
for (i1=0;i1<nLen1;i1++)
{
  par1 << (QBoxSet *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
}
      RBOOL( obj->append ( par1 ) );
  }
#endif
}

//[1]bool append(QBoxSet *box)
//[2]bool append(QList<QBoxSet *> boxes)

HB_FUNC_STATIC( QBOXPLOTSERIES_APPEND )
{
  if( ISNUMPAR(1) && ISQBOXSET(1) )
  {
    QBoxPlotSeries_append1();
  }
  else if( ISNUMPAR(1) && ISARRAY(1) )
  {
    QBoxPlotSeries_append2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool remove(QBoxSet *box)
*/
HB_FUNC_STATIC( QBOXPLOTSERIES_REMOVE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBoxPlotSeries * obj = (QBoxPlotSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQBOXSET(1) )
    {
#endif
      RBOOL( obj->remove ( PQBOXSET(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
bool take(QBoxSet *box)
*/
HB_FUNC_STATIC( QBOXPLOTSERIES_TAKE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBoxPlotSeries * obj = (QBoxPlotSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQBOXSET(1) )
    {
#endif
      RBOOL( obj->take ( PQBOXSET(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
bool insert(int index, QBoxSet *box)
*/
HB_FUNC_STATIC( QBOXPLOTSERIES_INSERT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBoxPlotSeries * obj = (QBoxPlotSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISNUM(1) && ISQBOXSET(2) )
    {
#endif
      RBOOL( obj->insert ( PINT(1), PQBOXSET(2) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
QList<QBoxSet *> boxSets() const
*/
HB_FUNC_STATIC( QBOXPLOTSERIES_BOXSETS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBoxPlotSeries * obj = (QBoxPlotSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QList<QBoxSet *> list = obj->boxSets ();
      PHB_DYNS pDynSym = hb_dynsymFindName( "QBOXSET" );
      PHB_ITEM pArray = hb_itemArrayNew(0);
      int i;
      for(i=0;i<list.count();i++)
      {
        if( pDynSym )
        {
          hb_vmPushDynSym( pDynSym );
          hb_vmPushNil();
          hb_vmDo( 0 );
          PHB_ITEM pObject = hb_itemNew( NULL );
          hb_itemCopy( pObject, hb_stackReturnItem() );
          PHB_ITEM pItem = hb_itemNew( NULL );
          hb_itemPutPtr( pItem, (QBoxSet *) list[i] );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
        else
        {
          hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QBOXSET", HB_ERR_ARGS_BASEPARAMS );
        }
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
#endif
}

/*
void clear()
*/
HB_FUNC_STATIC( QBOXPLOTSERIES_CLEAR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBoxPlotSeries * obj = (QBoxPlotSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->clear ();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QAbstractSeries::SeriesType type() const
*/
HB_FUNC_STATIC( QBOXPLOTSERIES_TYPE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBoxPlotSeries * obj = (QBoxPlotSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->type () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

using namespace QtCharts;

/*
void boxOutlineVisibilityChanged()
*/
HB_FUNC_STATIC( QBOXPLOTSERIES_ONBOXOUTLINEVISIBILITYCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  if( hb_pcount() == 1 )
  {
    QBoxPlotSeries * sender = (QBoxPlotSeries *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      if( Signals2_connection( sender, "boxOutlineVisibilityChanged()" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, &QBoxPlotSeries::boxOutlineVisibilityChanged, [sender]() {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "boxOutlineVisibilityChanged()" );

          if( cb )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QBOXPLOTSERIES" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 1, pSender );
            hb_itemRelease( pSender );
          }

        });

        Signals2_store_connection( sender, "boxOutlineVisibilityChanged()", connection );

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
    QBoxPlotSeries * sender = (QBoxPlotSeries *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      Signals2_disconnection( sender, "boxOutlineVisibilityChanged()" );

      QObject::disconnect( Signals2_get_connection( sender, "boxOutlineVisibilityChanged()" ) );

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
#endif
}

/*
void boxsetsAdded( QList<QBoxSet*> sets )
*/
HB_FUNC_STATIC( QBOXPLOTSERIES_ONBOXSETSADDED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  if( hb_pcount() == 1 )
  {
    QBoxPlotSeries * sender = (QBoxPlotSeries *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      if( Signals2_connection( sender, "boxsetsAdded(QList<QBoxSet*>)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, &QBoxPlotSeries::boxsetsAdded, [sender](QList<QBoxSet*> arg1) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "boxsetsAdded(QList<QBoxSet*>)" );

          if( cb )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QBOXPLOTSERIES" );
            PHB_DYNS pDynSym = hb_dynsymFindName( "QBOXSET" );
            PHB_ITEM pArg1 = hb_itemArrayNew(0);
            int i;
            for(i=0;i<arg1.count();i++)
            {
              if( pDynSym )
              {
                hb_vmPushDynSym( pDynSym );
                hb_vmPushNil();
                hb_vmDo( 0 );
                PHB_ITEM pTempObject = hb_itemNew( NULL );
                hb_itemCopy( pTempObject, hb_stackReturnItem() );
                PHB_ITEM pTempItem = hb_itemNew( NULL );
                hb_itemPutPtr( pTempItem, (QBoxSet *) arg1 [i] );
                hb_objSendMsg( pTempObject, "NEWFROMPOINTER", 1, pTempItem );
                hb_arrayAddForward( pArg1, pTempObject );
                hb_itemRelease( pTempObject );
                hb_itemRelease( pTempItem );
              }
              else
              {
                hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QBOXSET", HB_ERR_ARGS_BASEPARAMS );
              }
            }
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals2_store_connection( sender, "boxsetsAdded(QList<QBoxSet*>)", connection );

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
    QBoxPlotSeries * sender = (QBoxPlotSeries *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      Signals2_disconnection( sender, "boxsetsAdded(QList<QBoxSet*>)" );

      QObject::disconnect( Signals2_get_connection( sender, "boxsetsAdded(QList<QBoxSet*>)" ) );

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
#endif
}

/*
void boxsetsRemoved( QList<QBoxSet*> sets )
*/
HB_FUNC_STATIC( QBOXPLOTSERIES_ONBOXSETSREMOVED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  if( hb_pcount() == 1 )
  {
    QBoxPlotSeries * sender = (QBoxPlotSeries *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      if( Signals2_connection( sender, "boxsetsRemoved(QList<QBoxSet*>)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, &QBoxPlotSeries::boxsetsRemoved, [sender](QList<QBoxSet*> arg1) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "boxsetsRemoved(QList<QBoxSet*>)" );

          if( cb )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QBOXPLOTSERIES" );
            PHB_DYNS pDynSym = hb_dynsymFindName( "QBOXSET" );
            PHB_ITEM pArg1 = hb_itemArrayNew(0);
            int i;
            for(i=0;i<arg1.count();i++)
            {
              if( pDynSym )
              {
                hb_vmPushDynSym( pDynSym );
                hb_vmPushNil();
                hb_vmDo( 0 );
                PHB_ITEM pTempObject = hb_itemNew( NULL );
                hb_itemCopy( pTempObject, hb_stackReturnItem() );
                PHB_ITEM pTempItem = hb_itemNew( NULL );
                hb_itemPutPtr( pTempItem, (QBoxSet *) arg1 [i] );
                hb_objSendMsg( pTempObject, "NEWFROMPOINTER", 1, pTempItem );
                hb_arrayAddForward( pArg1, pTempObject );
                hb_itemRelease( pTempObject );
                hb_itemRelease( pTempItem );
              }
              else
              {
                hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QBOXSET", HB_ERR_ARGS_BASEPARAMS );
              }
            }
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals2_store_connection( sender, "boxsetsRemoved(QList<QBoxSet*>)", connection );

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
    QBoxPlotSeries * sender = (QBoxPlotSeries *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      Signals2_disconnection( sender, "boxsetsRemoved(QList<QBoxSet*>)" );

      QObject::disconnect( Signals2_get_connection( sender, "boxsetsRemoved(QList<QBoxSet*>)" ) );

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
#endif
}

/*
void boxWidthChanged()
*/
HB_FUNC_STATIC( QBOXPLOTSERIES_ONBOXWIDTHCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  if( hb_pcount() == 1 )
  {
    QBoxPlotSeries * sender = (QBoxPlotSeries *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      if( Signals2_connection( sender, "boxWidthChanged()" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, &QBoxPlotSeries::boxWidthChanged, [sender]() {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "boxWidthChanged()" );

          if( cb )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QBOXPLOTSERIES" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 1, pSender );
            hb_itemRelease( pSender );
          }

        });

        Signals2_store_connection( sender, "boxWidthChanged()", connection );

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
    QBoxPlotSeries * sender = (QBoxPlotSeries *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      Signals2_disconnection( sender, "boxWidthChanged()" );

      QObject::disconnect( Signals2_get_connection( sender, "boxWidthChanged()" ) );

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
#endif
}

/*
void brushChanged()
*/
HB_FUNC_STATIC( QBOXPLOTSERIES_ONBRUSHCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  if( hb_pcount() == 1 )
  {
    QBoxPlotSeries * sender = (QBoxPlotSeries *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      if( Signals2_connection( sender, "brushChanged()" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, &QBoxPlotSeries::brushChanged, [sender]() {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "brushChanged()" );

          if( cb )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QBOXPLOTSERIES" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 1, pSender );
            hb_itemRelease( pSender );
          }

        });

        Signals2_store_connection( sender, "brushChanged()", connection );

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
    QBoxPlotSeries * sender = (QBoxPlotSeries *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      Signals2_disconnection( sender, "brushChanged()" );

      QObject::disconnect( Signals2_get_connection( sender, "brushChanged()" ) );

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
#endif
}

/*
void clicked( QBoxSet * boxset )
*/
HB_FUNC_STATIC( QBOXPLOTSERIES_ONCLICKED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  if( hb_pcount() == 1 )
  {
    QBoxPlotSeries * sender = (QBoxPlotSeries *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      if( Signals2_connection( sender, "clicked(QBoxSet*)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, &QBoxPlotSeries::clicked, [sender](QBoxSet* arg1) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "clicked(QBoxSet*)" );

          if( cb )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QBOXPLOTSERIES" );
            PHB_ITEM pArg1 = Signals2_return_qobject( (QObject *) arg1, "QBOXSET" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals2_store_connection( sender, "clicked(QBoxSet*)", connection );

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
    QBoxPlotSeries * sender = (QBoxPlotSeries *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      Signals2_disconnection( sender, "clicked(QBoxSet*)" );

      QObject::disconnect( Signals2_get_connection( sender, "clicked(QBoxSet*)" ) );

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
#endif
}

/*
void countChanged()
*/
HB_FUNC_STATIC( QBOXPLOTSERIES_ONCOUNTCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  if( hb_pcount() == 1 )
  {
    QBoxPlotSeries * sender = (QBoxPlotSeries *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      if( Signals2_connection( sender, "countChanged()" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, &QBoxPlotSeries::countChanged, [sender]() {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "countChanged()" );

          if( cb )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QBOXPLOTSERIES" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 1, pSender );
            hb_itemRelease( pSender );
          }

        });

        Signals2_store_connection( sender, "countChanged()", connection );

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
    QBoxPlotSeries * sender = (QBoxPlotSeries *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      Signals2_disconnection( sender, "countChanged()" );

      QObject::disconnect( Signals2_get_connection( sender, "countChanged()" ) );

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
#endif
}

/*
void doubleClicked( QBoxSet * boxset )
*/
HB_FUNC_STATIC( QBOXPLOTSERIES_ONDOUBLECLICKED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  if( hb_pcount() == 1 )
  {
    QBoxPlotSeries * sender = (QBoxPlotSeries *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      if( Signals2_connection( sender, "doubleClicked(QBoxSet*)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, &QBoxPlotSeries::doubleClicked, [sender](QBoxSet* arg1) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "doubleClicked(QBoxSet*)" );

          if( cb )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QBOXPLOTSERIES" );
            PHB_ITEM pArg1 = Signals2_return_qobject( (QObject *) arg1, "QBOXSET" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals2_store_connection( sender, "doubleClicked(QBoxSet*)", connection );

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
    QBoxPlotSeries * sender = (QBoxPlotSeries *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      Signals2_disconnection( sender, "doubleClicked(QBoxSet*)" );

      QObject::disconnect( Signals2_get_connection( sender, "doubleClicked(QBoxSet*)" ) );

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
#endif
}

/*
void hovered( bool status, QBoxSet * boxset )
*/
HB_FUNC_STATIC( QBOXPLOTSERIES_ONHOVERED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  if( hb_pcount() == 1 )
  {
    QBoxPlotSeries * sender = (QBoxPlotSeries *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      if( Signals2_connection( sender, "hovered(bool,QBoxSet*)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, &QBoxPlotSeries::hovered, [sender](bool arg1, QBoxSet* arg2) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "hovered(bool,QBoxSet*)" );

          if( cb )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QBOXPLOTSERIES" );
            PHB_ITEM pArg1 = hb_itemPutL( NULL, arg1 );
            PHB_ITEM pArg2 = Signals2_return_qobject( (QObject *) arg2, "QBOXSET" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 3, pSender, pArg1, pArg2 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
            hb_itemRelease( pArg2 );
          }

        });

        Signals2_store_connection( sender, "hovered(bool,QBoxSet*)", connection );

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
    QBoxPlotSeries * sender = (QBoxPlotSeries *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      Signals2_disconnection( sender, "hovered(bool,QBoxSet*)" );

      QObject::disconnect( Signals2_get_connection( sender, "hovered(bool,QBoxSet*)" ) );

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
#endif
}

/*
void penChanged()
*/
HB_FUNC_STATIC( QBOXPLOTSERIES_ONPENCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  if( hb_pcount() == 1 )
  {
    QBoxPlotSeries * sender = (QBoxPlotSeries *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      if( Signals2_connection( sender, "penChanged()" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, &QBoxPlotSeries::penChanged, [sender]() {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "penChanged()" );

          if( cb )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QBOXPLOTSERIES" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 1, pSender );
            hb_itemRelease( pSender );
          }

        });

        Signals2_store_connection( sender, "penChanged()", connection );

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
    QBoxPlotSeries * sender = (QBoxPlotSeries *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      Signals2_disconnection( sender, "penChanged()" );

      QObject::disconnect( Signals2_get_connection( sender, "penChanged()" ) );

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
#endif
}

/*
void pressed( QBoxSet * boxset )
*/
HB_FUNC_STATIC( QBOXPLOTSERIES_ONPRESSED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  if( hb_pcount() == 1 )
  {
    QBoxPlotSeries * sender = (QBoxPlotSeries *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      if( Signals2_connection( sender, "pressed(QBoxSet*)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, &QBoxPlotSeries::pressed, [sender](QBoxSet* arg1) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "pressed(QBoxSet*)" );

          if( cb )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QBOXPLOTSERIES" );
            PHB_ITEM pArg1 = Signals2_return_qobject( (QObject *) arg1, "QBOXSET" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals2_store_connection( sender, "pressed(QBoxSet*)", connection );

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
    QBoxPlotSeries * sender = (QBoxPlotSeries *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      Signals2_disconnection( sender, "pressed(QBoxSet*)" );

      QObject::disconnect( Signals2_get_connection( sender, "pressed(QBoxSet*)" ) );

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
#endif
}

/*
void released( QBoxSet * boxset )
*/
HB_FUNC_STATIC( QBOXPLOTSERIES_ONRELEASED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  if( hb_pcount() == 1 )
  {
    QBoxPlotSeries * sender = (QBoxPlotSeries *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      if( Signals2_connection( sender, "released(QBoxSet*)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, &QBoxPlotSeries::released, [sender](QBoxSet* arg1) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "released(QBoxSet*)" );

          if( cb )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QBOXPLOTSERIES" );
            PHB_ITEM pArg1 = Signals2_return_qobject( (QObject *) arg1, "QBOXSET" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals2_store_connection( sender, "released(QBoxSet*)", connection );

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
    QBoxPlotSeries * sender = (QBoxPlotSeries *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      Signals2_disconnection( sender, "released(QBoxSet*)" );

      QObject::disconnect( Signals2_get_connection( sender, "released(QBoxSet*)" ) );

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
#endif
}

#pragma ENDDUMP
