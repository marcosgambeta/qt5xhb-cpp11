/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPRINTER
#endif

CLASS QPrintDialog INHERIT QAbstractPrintDialog

   METHOD new
   METHOD delete
   METHOD open
   METHOD options
   METHOD printer
   METHOD setOption
   METHOD setOptions
   METHOD testOption
   METHOD done
   METHOD exec
   METHOD setVisible

   METHOD onAccepted

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QPrintDialog
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtPrintSupport/QPrintDialog>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#include <QtPrintSupport/QPrintDialog>
#endif

#include <QtPrintSupport/QPrinter>

/*
QPrintDialog( QPrinter * printer, QWidget * parent = nullptr )
*/
void QPrintDialog_new1()
{
  auto obj = new QPrintDialog( PQPRINTER(1), OPQWIDGET(2,nullptr) );
  Qt5xHb::returnNewObject( obj, false );
}

/*
QPrintDialog( QWidget * parent = nullptr )
*/
void QPrintDialog_new2()
{
  auto obj = new QPrintDialog( OPQWIDGET(1,nullptr) );
  Qt5xHb::returnNewObject( obj, false );
}

HB_FUNC_STATIC( QPRINTDIALOG_NEW )
{
  if( ISBETWEEN(1,2) && ISQPRINTER(1) && (ISQWIDGET(2)||ISNIL(2)) )
  {
    QPrintDialog_new1();
  }
  else if( ISBETWEEN(0,1) && (ISQWIDGET(1)||ISNIL(1)) )
  {
    QPrintDialog_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QPRINTDIALOG_DELETE )
{
  auto obj = (QPrintDialog *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    Qt5xHb::Events_disconnect_all_events( obj, true );
    Qt5xHb::Signals_disconnect_all_signals( obj, true );
    delete obj;
    obj = nullptr;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( nullptr, nullptr );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void open( QObject * receiver, const char * member )
*/
HB_FUNC_STATIC( QPRINTDIALOG_OPEN )
{
  auto obj = (QPrintDialog *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISQOBJECT(1) && ISCHAR(2) )
    {
#endif
      obj->open( PQOBJECT(1), PCONSTCHAR(2) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QAbstractPrintDialog::PrintDialogOptions options() const
*/
HB_FUNC_STATIC( QPRINTDIALOG_OPTIONS )
{
  auto obj = (QPrintDialog *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->options() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QPrinter * printer()
*/
HB_FUNC_STATIC( QPRINTDIALOG_PRINTER )
{
  auto obj = (QPrintDialog *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QPrinter * ptr = obj->printer();
      Qt5xHb::createReturnClass( ptr, "QPRINTER", false );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setOption( QPrintDialog::PrintDialogOption option, bool on = true )
*/
HB_FUNC_STATIC( QPRINTDIALOG_SETOPTION )
{
  auto obj = (QPrintDialog *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,2) && ISNUM(1) && (ISLOG(2)||ISNIL(2)) )
    {
#endif
      obj->setOption( (QPrintDialog::PrintDialogOption) hb_parni(1), OPBOOL(2,true) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setOptions( QPrintDialog::PrintDialogOptions options )
*/
HB_FUNC_STATIC( QPRINTDIALOG_SETOPTIONS )
{
  auto obj = (QPrintDialog *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setOptions( (QPrintDialog::PrintDialogOptions) hb_parni(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool testOption( QPrintDialog::PrintDialogOption option ) const
*/
HB_FUNC_STATIC( QPRINTDIALOG_TESTOPTION )
{
  auto obj = (QPrintDialog *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      RBOOL( obj->testOption( (QPrintDialog::PrintDialogOption) hb_parni(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void done( int result )
*/
HB_FUNC_STATIC( QPRINTDIALOG_DONE )
{
  auto obj = (QPrintDialog *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->done( PINT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int exec()
*/
HB_FUNC_STATIC( QPRINTDIALOG_EXEC )
{
  auto obj = (QPrintDialog *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->exec() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setVisible( bool visible )
*/
HB_FUNC_STATIC( QPRINTDIALOG_SETVISIBLE )
{
  auto obj = (QPrintDialog *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setVisible( PBOOL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void accepted( QPrinter * printer )
*/
HB_FUNC_STATIC( QPRINTDIALOG_ONACCEPTED )
{
  auto sender = (QPrintDialog *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("accepted(QPrinter*)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              QOverload<QPrinter *>::of(&QPrintDialog::accepted), 
                                                              [sender, indexOfCodeBlock]
                                                              (QPrinter * arg1) {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject( (QObject *) sender, "QPRINTDIALOG" );
            PHB_ITEM pArg1 = Qt5xHb::Signals_return_object( (void *) arg1, "QPRINTER" );
            hb_vmEvalBlockV( cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Qt5xHb::Signals_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Qt5xHb::Signals_disconnection( sender, indexOfSignal );

      QObject::disconnect( Qt5xHb::Signals_get_connection( sender, indexOfSignal ) );

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
