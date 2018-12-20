/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBRUSH
REQUEST QPEN
#endif

CLASS QBoxSet INHERIT QObject

   METHOD new
   METHOD delete
   METHOD pen
   METHOD setPen
   METHOD brush
   METHOD setBrush
   METHOD append
   METHOD clear
   METHOD setLabel
   METHOD label
   METHOD setValue
   METHOD at
   METHOD count

   METHOD onBrushChanged
   METHOD onCleared
   METHOD onClicked
   METHOD onDoubleClicked
   METHOD onHovered
   METHOD onPenChanged
   METHOD onPressed
   METHOD onReleased
   METHOD onValueChanged
   METHOD onValuesChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QBoxSet
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QBoxSet>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals2.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QBoxSet>
#endif
#endif

using namespace QtCharts;

/*
explicit QBoxSet(const QString label = QString(), QObject *parent = Q_NULLPTR)
*/
void QBoxSet_new1 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBoxSet * o = new QBoxSet ( OPQSTRING(1,QString()), OPQOBJECT(2,Q_NULLPTR) );
  _qt5xhb_returnNewObject( o, false );
#endif
}

/*
explicit QBoxSet(const qreal le, const qreal lq, const qreal m, const qreal uq, const qreal ue, const QString label = QString(), QObject *parent = Q_NULLPTR)
*/
void QBoxSet_new2 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBoxSet * o = new QBoxSet ( PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4), PQREAL(5), OPQSTRING(6,QString()), OPQOBJECT(7,Q_NULLPTR) );
  _qt5xhb_returnNewObject( o, false );
#endif
}

//[1]explicit QBoxSet(const QString label = QString(), QObject *parent = Q_NULLPTR)
//[2]explicit QBoxSet(const qreal le, const qreal lq, const qreal m, const qreal uq, const qreal ue, const QString label = QString(), QObject *parent = Q_NULLPTR)

HB_FUNC_STATIC( QBOXSET_NEW )
{
  if( ISBETWEEN(0,2) && (ISCHAR(1)||ISNIL(1)) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    QBoxSet_new1();
  }
  else if( ISBETWEEN(5,7) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) && (ISCHAR(6)||ISNIL(6)) && (ISQOBJECT(7)||ISNIL(7)) )
  {
    QBoxSet_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
virtual ~QBoxSet()
*/
HB_FUNC_STATIC( QBOXSET_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBoxSet * obj = (QBoxSet *) _qt5xhb_itemGetPtrStackSelfItem();

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
QPen pen() const
*/
HB_FUNC_STATIC( QBOXSET_PEN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBoxSet * obj = (QBoxSet *) _qt5xhb_itemGetPtrStackSelfItem();

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
HB_FUNC_STATIC( QBOXSET_SETPEN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBoxSet * obj = (QBoxSet *) _qt5xhb_itemGetPtrStackSelfItem();

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
QBrush brush() const
*/
HB_FUNC_STATIC( QBOXSET_BRUSH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBoxSet * obj = (QBoxSet *) _qt5xhb_itemGetPtrStackSelfItem();

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
HB_FUNC_STATIC( QBOXSET_SETBRUSH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBoxSet * obj = (QBoxSet *) _qt5xhb_itemGetPtrStackSelfItem();

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
void append(const qreal value)
*/
void QBoxSet_append1 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBoxSet * obj = (QBoxSet *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      obj->append ( PQREAL(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void append(const QList<qreal> &values)
*/
void QBoxSet_append2 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBoxSet * obj = (QBoxSet *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
       QList<qreal> par1;
PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aList1);
qreal temp1;
for (i1=0;i1<nLen1;i1++)
{
  temp1 = hb_arrayGetND(aList1, i1+1);
  par1 << temp1;
}
      obj->append ( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

//[1]void append(const qreal value)
//[2]void append(const QList<qreal> &values)

HB_FUNC_STATIC( QBOXSET_APPEND )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QBoxSet_append1();
  }
  else if( ISNUMPAR(1) && ISARRAY(1) )
  {
    QBoxSet_append2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void clear()
*/
HB_FUNC_STATIC( QBOXSET_CLEAR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBoxSet * obj = (QBoxSet *) _qt5xhb_itemGetPtrStackSelfItem();

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
void setLabel(const QString label)
*/
HB_FUNC_STATIC( QBOXSET_SETLABEL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBoxSet * obj = (QBoxSet *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      obj->setLabel ( PQSTRING(1) );
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
QString label() const
*/
HB_FUNC_STATIC( QBOXSET_LABEL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBoxSet * obj = (QBoxSet *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->label () );
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
void setValue(const int index, const qreal value)
*/
HB_FUNC_STATIC( QBOXSET_SETVALUE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBoxSet * obj = (QBoxSet *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
    {
#endif
      obj->setValue ( PINT(1), PQREAL(2) );
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
qreal at(const int index) const
*/
HB_FUNC_STATIC( QBOXSET_AT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBoxSet * obj = (QBoxSet *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      RQREAL( obj->at ( PINT(1) ) );
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
int count() const
*/
HB_FUNC_STATIC( QBOXSET_COUNT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBoxSet * obj = (QBoxSet *) _qt5xhb_itemGetPtrStackSelfItem();

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

using namespace QtCharts;

/*
void brushChanged()
*/
HB_FUNC_STATIC( QBOXSET_ONBRUSHCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  if( hb_pcount() == 1 )
  {
    QBoxSet * sender = (QBoxSet *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      if( Signals2_connection( sender, "brushChanged()" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, &QBoxSet::brushChanged, [sender]() {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "brushChanged()" );

          if( cb )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QBOXSET" );
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
    QBoxSet * sender = (QBoxSet *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
void cleared()
*/
HB_FUNC_STATIC( QBOXSET_ONCLEARED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  if( hb_pcount() == 1 )
  {
    QBoxSet * sender = (QBoxSet *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      if( Signals2_connection( sender, "cleared()" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, &QBoxSet::cleared, [sender]() {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "cleared()" );

          if( cb )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QBOXSET" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 1, pSender );
            hb_itemRelease( pSender );
          }

        });

        Signals2_store_connection( sender, "cleared()", connection );

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
    QBoxSet * sender = (QBoxSet *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      Signals2_disconnection( sender, "cleared()" );

      QObject::disconnect( Signals2_get_connection( sender, "cleared()" ) );

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
void clicked()
*/
HB_FUNC_STATIC( QBOXSET_ONCLICKED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  if( hb_pcount() == 1 )
  {
    QBoxSet * sender = (QBoxSet *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      if( Signals2_connection( sender, "clicked()" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, &QBoxSet::clicked, [sender]() {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "clicked()" );

          if( cb )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QBOXSET" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 1, pSender );
            hb_itemRelease( pSender );
          }

        });

        Signals2_store_connection( sender, "clicked()", connection );

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
    QBoxSet * sender = (QBoxSet *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      Signals2_disconnection( sender, "clicked()" );

      QObject::disconnect( Signals2_get_connection( sender, "clicked()" ) );

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
void doubleClicked()
*/
HB_FUNC_STATIC( QBOXSET_ONDOUBLECLICKED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  if( hb_pcount() == 1 )
  {
    QBoxSet * sender = (QBoxSet *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      if( Signals2_connection( sender, "doubleClicked()" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, &QBoxSet::doubleClicked, [sender]() {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "doubleClicked()" );

          if( cb )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QBOXSET" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 1, pSender );
            hb_itemRelease( pSender );
          }

        });

        Signals2_store_connection( sender, "doubleClicked()", connection );

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
    QBoxSet * sender = (QBoxSet *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      Signals2_disconnection( sender, "doubleClicked()" );

      QObject::disconnect( Signals2_get_connection( sender, "doubleClicked()" ) );

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
void hovered( bool status )
*/
HB_FUNC_STATIC( QBOXSET_ONHOVERED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  if( hb_pcount() == 1 )
  {
    QBoxSet * sender = (QBoxSet *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      if( Signals2_connection( sender, "hovered(bool)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, &QBoxSet::hovered, [sender](bool arg1) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "hovered(bool)" );

          if( cb )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QBOXSET" );
            PHB_ITEM pArg1 = hb_itemPutL( NULL, arg1 );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals2_store_connection( sender, "hovered(bool)", connection );

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
    QBoxSet * sender = (QBoxSet *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      Signals2_disconnection( sender, "hovered(bool)" );

      QObject::disconnect( Signals2_get_connection( sender, "hovered(bool)" ) );

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
HB_FUNC_STATIC( QBOXSET_ONPENCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  if( hb_pcount() == 1 )
  {
    QBoxSet * sender = (QBoxSet *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      if( Signals2_connection( sender, "penChanged()" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, &QBoxSet::penChanged, [sender]() {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "penChanged()" );

          if( cb )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QBOXSET" );
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
    QBoxSet * sender = (QBoxSet *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
void pressed()
*/
HB_FUNC_STATIC( QBOXSET_ONPRESSED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  if( hb_pcount() == 1 )
  {
    QBoxSet * sender = (QBoxSet *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      if( Signals2_connection( sender, "pressed()" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, &QBoxSet::pressed, [sender]() {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "pressed()" );

          if( cb )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QBOXSET" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 1, pSender );
            hb_itemRelease( pSender );
          }

        });

        Signals2_store_connection( sender, "pressed()", connection );

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
    QBoxSet * sender = (QBoxSet *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      Signals2_disconnection( sender, "pressed()" );

      QObject::disconnect( Signals2_get_connection( sender, "pressed()" ) );

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
void released()
*/
HB_FUNC_STATIC( QBOXSET_ONRELEASED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  if( hb_pcount() == 1 )
  {
    QBoxSet * sender = (QBoxSet *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      if( Signals2_connection( sender, "released()" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, &QBoxSet::released, [sender]() {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "released()" );

          if( cb )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QBOXSET" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 1, pSender );
            hb_itemRelease( pSender );
          }

        });

        Signals2_store_connection( sender, "released()", connection );

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
    QBoxSet * sender = (QBoxSet *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      Signals2_disconnection( sender, "released()" );

      QObject::disconnect( Signals2_get_connection( sender, "released()" ) );

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
void valueChanged( int index )
*/
HB_FUNC_STATIC( QBOXSET_ONVALUECHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  if( hb_pcount() == 1 )
  {
    QBoxSet * sender = (QBoxSet *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      if( Signals2_connection( sender, "valueChanged(int)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, &QBoxSet::valueChanged, [sender](int arg1) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "valueChanged(int)" );

          if( cb )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QBOXSET" );
            PHB_ITEM pArg1 = hb_itemPutNI( NULL, arg1 );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals2_store_connection( sender, "valueChanged(int)", connection );

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
    QBoxSet * sender = (QBoxSet *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      Signals2_disconnection( sender, "valueChanged(int)" );

      QObject::disconnect( Signals2_get_connection( sender, "valueChanged(int)" ) );

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
void valuesChanged()
*/
HB_FUNC_STATIC( QBOXSET_ONVALUESCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  if( hb_pcount() == 1 )
  {
    QBoxSet * sender = (QBoxSet *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      if( Signals2_connection( sender, "valuesChanged()" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, &QBoxSet::valuesChanged, [sender]() {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "valuesChanged()" );

          if( cb )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QBOXSET" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 1, pSender );
            hb_itemRelease( pSender );
          }

        });

        Signals2_store_connection( sender, "valuesChanged()", connection );

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
    QBoxSet * sender = (QBoxSet *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender )
    {
      Signals2_disconnection( sender, "valuesChanged()" );

      QObject::disconnect( Signals2_get_connection( sender, "valuesChanged()" ) );

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
