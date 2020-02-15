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

CLASS QDomDocumentFragment INHERIT QDomNode

   METHOD new
   METHOD delete
   METHOD nodeType

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDomDocumentFragment
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtXml/QDomDocumentFragment>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals4.h"

#ifdef __XHARBOUR__
#include <QtXml/QDomDocumentFragment>
#endif

/*
QDomDocumentFragment ()
*/
void QDomDocumentFragment_new1 ()
{
  QDomDocumentFragment * o = new QDomDocumentFragment ();
  _qt5xhb_returnNewObject( o, true );
}

/*
QDomDocumentFragment ( const QDomDocumentFragment & x )
*/
void QDomDocumentFragment_new2 ()
{
  QDomDocumentFragment * o = new QDomDocumentFragment ( *PQDOMDOCUMENTFRAGMENT(1) );
  _qt5xhb_returnNewObject( o, true );
}

//[1]QDomDocumentFragment ()
//[2]QDomDocumentFragment ( const QDomDocumentFragment & x )

HB_FUNC_STATIC( QDOMDOCUMENTFRAGMENT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QDomDocumentFragment_new1();
  }
  else if( ISNUMPAR(1) && ISQDOMDOCUMENTFRAGMENT(1) )
  {
    QDomDocumentFragment_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QDOMDOCUMENTFRAGMENT_DELETE )
{
  QDomDocumentFragment * obj = (QDomDocumentFragment *) _qt5xhb_itemGetPtrStackSelfItem();

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
QDomNode::NodeType nodeType () const
*/
HB_FUNC_STATIC( QDOMDOCUMENTFRAGMENT_NODETYPE )
{
  QDomDocumentFragment * obj = (QDomDocumentFragment *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->nodeType () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

#pragma ENDDUMP
